.class Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout$1;
.super Ljava/lang/Object;
.source "StarAppraiseLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout;->setStartUi(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout;

.field final synthetic val$finalI:I


# direct methods
.method constructor <init>(Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout;I)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout$1;->this$0:Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout;

    iput p2, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout$1;->val$finalI:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 77
    iget-object p1, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout$1;->this$0:Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout;

    iget v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout$1;->val$finalI:I

    invoke-virtual {p1, v0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout;->setSelectScoreIndex(I)V

    return-void
.end method
