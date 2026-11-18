.class Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$7;
.super Lcom/alibaba/ailabs/appbox/view/NoLineCllikcSpan;
.source "MarketDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->setTextViewForLimit(Landroid/widget/TextView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

.field final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;Landroid/widget/TextView;)V
    .locals 0

    .line 551
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$7;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

    iput-object p2, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$7;->val$textView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/view/NoLineCllikcSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 554
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$7;->val$textView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$7;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->access$1100(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
