.class public final Lcom/alibaba/analytics/core/logbuilder/GoogleAdvertisingIdClient$AdInfo;
.super Ljava/lang/Object;
.source "GoogleAdvertisingIdClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/analytics/core/logbuilder/GoogleAdvertisingIdClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdInfo"
.end annotation


# instance fields
.field private final advertisingId:Ljava/lang/String;

.field private final limitAdTrackingEnabled:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/alibaba/analytics/core/logbuilder/GoogleAdvertisingIdClient$AdInfo;->advertisingId:Ljava/lang/String;

    .line 33
    iput-boolean p2, p0, Lcom/alibaba/analytics/core/logbuilder/GoogleAdvertisingIdClient$AdInfo;->limitAdTrackingEnabled:Z

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/alibaba/analytics/core/logbuilder/GoogleAdvertisingIdClient$AdInfo;->advertisingId:Ljava/lang/String;

    return-object v0
.end method

.method public isLimitAdTrackingEnabled()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/alibaba/analytics/core/logbuilder/GoogleAdvertisingIdClient$AdInfo;->limitAdTrackingEnabled:Z

    return v0
.end method
