.class Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum$1;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "ExtendAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendAlbumBinding;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum;

.field final synthetic val$this$0:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum;Landroid/content/Context;Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum$1;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum;

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum$1;->val$this$0:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
