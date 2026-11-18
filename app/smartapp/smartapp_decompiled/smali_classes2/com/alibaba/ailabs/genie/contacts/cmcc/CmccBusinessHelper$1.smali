.class Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper$1;
.super Landroid/text/style/ClickableSpan;
.source "CmccBusinessHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 196
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;->access$000(Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;)Lcom/alibaba/ailabs/genie/contacts/MainActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;->access$100(Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;)Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "cmcc-BusinessHelper"

    const-string v1, "onClick: \u901a\u8bdd\u670d\u52a1"

    .line 197
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;->access$100(Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;)Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccPresenter;->showConversationDialog()V

    .line 199
    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;->access$000(Lcom/alibaba/ailabs/genie/contacts/cmcc/CmccBusinessHelper;)Lcom/alibaba/ailabs/genie/contacts/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHighlightColor(I)V

    :cond_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    const/4 v0, 0x0

    .line 207
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
