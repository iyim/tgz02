.class Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity$1;
.super Ljava/lang/Object;
.source "ShoppingDetailVideoActivity.java"

# interfaces
.implements Lcom/alibaba/genie/shopping/view/VideoWidgetView$IVideoWidgetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity;->setupView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity$1;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity$1;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity;

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity;->finish()V

    return-void
.end method
