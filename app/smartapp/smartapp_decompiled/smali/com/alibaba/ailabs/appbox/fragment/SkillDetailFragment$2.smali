.class Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment$2;
.super Lcom/alibaba/ailabs/appbox/view/NoLineCllikcSpan;
.source "SkillDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;->setSpanableString(Landroid/widget/TextView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment$2;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillDetailFragment;

    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/view/NoLineCllikcSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "clickableSpan"

    const-string v0, "on click..."

    .line 218
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
