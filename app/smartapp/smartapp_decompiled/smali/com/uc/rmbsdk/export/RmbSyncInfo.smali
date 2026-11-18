.class Lcom/uc/rmbsdk/export/RmbSyncInfo;
.super Ljava/lang/Object;
.source "RmbSyncInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/rmbsdk/export/RmbSyncInfo$SyncMessage;
    }
.end annotation


# instance fields
.field channelId:Ljava/lang/String;

.field hasMore:Z

.field messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/uc/rmbsdk/export/RmbSyncInfo$SyncMessage;",
            ">;"
        }
    .end annotation
.end field

.field queueId:Ljava/lang/String;

.field seq:J


# direct methods
.method constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uc/rmbsdk/export/RmbSyncInfo;->messages:Ljava/util/ArrayList;

    return-void
.end method
