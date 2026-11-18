.class Lcom/alibaba/ailabs/appbox/view/SkillItemView$1;
.super Ljava/lang/Object;
.source "SkillItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/view/SkillItemView;->setTipsClickListener(Lcom/alibaba/ailabs/appbox/view/SkillItemView$OnTitleClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/view/SkillItemView;

.field final synthetic val$listener:Lcom/alibaba/ailabs/appbox/view/SkillItemView$OnTitleClickListener;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/view/SkillItemView;Lcom/alibaba/ailabs/appbox/view/SkillItemView$OnTitleClickListener;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/view/SkillItemView$1;->this$0:Lcom/alibaba/ailabs/appbox/view/SkillItemView;

    iput-object p2, p0, Lcom/alibaba/ailabs/appbox/view/SkillItemView$1;->val$listener:Lcom/alibaba/ailabs/appbox/view/SkillItemView$OnTitleClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 47
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/view/SkillItemView$1;->val$listener:Lcom/alibaba/ailabs/appbox/view/SkillItemView$OnTitleClickListener;

    invoke-interface {p1}, Lcom/alibaba/ailabs/appbox/view/SkillItemView$OnTitleClickListener;->onTitleClick()V

    return-void
.end method
