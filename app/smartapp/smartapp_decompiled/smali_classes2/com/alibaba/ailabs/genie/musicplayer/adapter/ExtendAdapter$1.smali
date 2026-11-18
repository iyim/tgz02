.class Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$1;
.super Landroid/support/v7/widget/GridLayoutManager;
.source "ExtendAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->refreshGridView(Landroid/view/View;ILcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;Landroid/content/Context;I)V
    .locals 0

    .line 440
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;

    invoke-direct {p0, p2, p3}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
