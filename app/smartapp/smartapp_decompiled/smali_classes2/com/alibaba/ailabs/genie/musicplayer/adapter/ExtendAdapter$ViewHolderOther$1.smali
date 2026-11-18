.class Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther$1;
.super Landroid/support/v7/widget/GridLayoutManager;
.source "ExtendAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendOtherBinding;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther;

.field final synthetic val$this$0:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther;Landroid/content/Context;ILcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther$1;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther;

    iput-object p4, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther$1;->val$this$0:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;

    invoke-direct {p0, p2, p3}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
