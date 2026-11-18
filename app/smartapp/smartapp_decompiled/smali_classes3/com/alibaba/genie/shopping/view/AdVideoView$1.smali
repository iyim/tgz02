.class Lcom/alibaba/genie/shopping/view/AdVideoView$1;
.super Ljava/lang/Object;
.source "AdVideoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/view/AdVideoView;->showVideoPlaceHolder(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/view/AdVideoView;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/view/AdVideoView;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/AdVideoView$1;->this$0:Lcom/alibaba/genie/shopping/view/AdVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 170
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/AdVideoView$1;->this$0:Lcom/alibaba/genie/shopping/view/AdVideoView;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/view/AdVideoView;->access$000(Lcom/alibaba/genie/shopping/view/AdVideoView;)Lcom/alibaba/genie/shopping/view/AdVideoView$IAdVideoViewListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 171
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/AdVideoView$1;->this$0:Lcom/alibaba/genie/shopping/view/AdVideoView;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/view/AdVideoView;->access$000(Lcom/alibaba/genie/shopping/view/AdVideoView;)Lcom/alibaba/genie/shopping/view/AdVideoView$IAdVideoViewListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/alibaba/genie/shopping/view/AdVideoView$IAdVideoViewListener;->onAdDetailsClick()V

    :cond_0
    return-void
.end method
