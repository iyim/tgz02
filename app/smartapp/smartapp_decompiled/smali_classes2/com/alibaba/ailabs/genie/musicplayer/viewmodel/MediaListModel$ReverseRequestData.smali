.class final Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$ReverseRequestData;
.super Ljava/lang/Object;
.source "MediaListModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReverseRequestData"
.end annotation


# instance fields
.field public authInfo:Ljava/lang/String;

.field public pageSize:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "30"

    .line 179
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/MediaListModel$ReverseRequestData;->pageSize:Ljava/lang/String;

    return-void
.end method
