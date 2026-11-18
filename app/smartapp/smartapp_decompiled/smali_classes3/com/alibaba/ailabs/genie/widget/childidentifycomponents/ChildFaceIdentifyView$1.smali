.class Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView$1;
.super Ljava/lang/Object;
.source "ChildFaceIdentifyView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView$1;->this$0:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView$1;->this$0:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->access$000(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;)Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$Presenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView$1;->this$0:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;->access$000(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyView;)Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$Presenter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$Presenter;->setOnClickListener(Landroid/view/View;)V

    :cond_0
    return-void
.end method
