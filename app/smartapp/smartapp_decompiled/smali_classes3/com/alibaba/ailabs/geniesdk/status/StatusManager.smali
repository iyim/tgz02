.class public Lcom/alibaba/ailabs/geniesdk/status/StatusManager;
.super Ljava/lang/Object;
.source "StatusManager.java"


# static fields
.field public static final NOTIFY_BLUETOOTH_STATUS:I = 0x66

.field public static final NOTIFY_BRIGTHNESS_STATUS:I = 0xca

.field public static final NOTIFY_CALL_STATUS:I = 0xcb

.field public static final NOTIFY_GPS_STATUS:I = 0xcc

.field public static final NOTIFY_MEDIA_STATUS:I = 0xc8

.field public static final NOTIFY_MIC_STATUS:I = 0x6b

.field public static final NOTIFY_PLAYER_STATUS:I = 0x6c

.field public static final NOTIFY_POWER_STATUS:I = 0x68

.field public static final NOTIFY_SOFTWAREINFO_STATUS:I = 0xc9

.field public static final NOTIFY_SPEAKER_STATUS:I = 0x67

.field public static final NOTIFY_SYSTEM_STATUS:I = 0x69

.field public static final NOTIFY_WIFI_STATUS:I = 0x65


# instance fields
.field mNativeMgr:Lcom/alibaba/ailabs/geniesdk/status/NativeStatusMgr;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Lcom/alibaba/ailabs/geniesdk/status/NativeStatusMgr;

    invoke-direct {v0}, Lcom/alibaba/ailabs/geniesdk/status/NativeStatusMgr;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/geniesdk/status/StatusManager;->mNativeMgr:Lcom/alibaba/ailabs/geniesdk/status/NativeStatusMgr;

    return-void
.end method


# virtual methods
.method public statusChange(ILjava/lang/Object;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 101
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/status/StatusManager;->mNativeMgr:Lcom/alibaba/ailabs/geniesdk/status/NativeStatusMgr;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/ailabs/geniesdk/status/NativeStatusMgr;->statusChange(ILjava/lang/Object;Z)V

    :cond_0
    return-void
.end method
