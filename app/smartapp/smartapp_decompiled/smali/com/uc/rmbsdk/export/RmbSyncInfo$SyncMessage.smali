.class Lcom/uc/rmbsdk/export/RmbSyncInfo$SyncMessage;
.super Ljava/lang/Object;
.source "RmbSyncInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/rmbsdk/export/RmbSyncInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SyncMessage"
.end annotation


# instance fields
.field content:Ljava/lang/String;

.field seq:J


# direct methods
.method constructor <init>(JLjava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-wide p1, p0, Lcom/uc/rmbsdk/export/RmbSyncInfo$SyncMessage;->seq:J

    .line 21
    iput-object p3, p0, Lcom/uc/rmbsdk/export/RmbSyncInfo$SyncMessage;->content:Ljava/lang/String;

    return-void
.end method
