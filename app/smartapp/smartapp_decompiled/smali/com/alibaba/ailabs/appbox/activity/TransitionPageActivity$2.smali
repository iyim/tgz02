.class Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity$2;
.super Ljava/lang/Object;
.source "TransitionPageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity$2;->this$0:Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 91
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity$2;->this$0:Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->finish()V

    return-void
.end method
