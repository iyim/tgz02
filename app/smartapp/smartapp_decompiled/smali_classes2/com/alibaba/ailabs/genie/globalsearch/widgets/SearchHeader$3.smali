.class Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$3;
.super Ljava/lang/Object;
.source "SearchHeader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$3;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$null$18$SearchHeader$3(Ljava/util/List;Landroid/view/View;I)V
    .locals 1

    .line 224
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$3;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->searchEvent:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$SearchEvent;

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->isFastClick()Z

    move-result p2

    if-nez p2, :cond_0

    .line 225
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$3;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->searchEvent:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$SearchEvent;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$SearchEvent;->onSearchByString(Ljava/lang/String;)V

    .line 226
    sget-object p2, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->inputPage:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    .line 227
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->getExtend()Ljava/lang/String;

    move-result-object p1

    const-string p3, "guess_query"

    .line 226
    invoke-static {p2, p3, p1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTManager;->clickUT(Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$run$19$SearchHeader$3(Lcom/alibaba/ailabs/genie/globalsearch/response/AutoSuggestResponse;)Ljava/lang/Void;
    .locals 6

    if-eqz p1, :cond_1

    .line 210
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/response/AutoSuggestResponse;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 211
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/response/AutoSuggestResponse;->getModel()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$3;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;

    .line 212
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->access$100(Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 213
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/response/AutoSuggestResponse;->getKeyWord()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$3;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->access$100(Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " updateSearchSuggest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/response/AutoSuggestResponse;->getModel()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/SearchLog;->d(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$3;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->searchSuggest:Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->removeAllViews()V

    .line 216
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/response/AutoSuggestResponse;->getModel()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 217
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;

    .line 218
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$3;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/alibaba/ailabs/genie/globalsearch/R$layout;->gs_item_search_suggest:I

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$3;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;

    iget-object v4, v4, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->searchSuggest:Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 219
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$3;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->searchSuggest:Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$3;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;

    iget-object v3, v3, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->searchSuggest:Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v2, v3}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 221
    sget v3, Lcom/alibaba/ailabs/genie/globalsearch/R$id;->suggest:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$3;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->searchSuggest:Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;

    new-instance v1, Lcom/alibaba/ailabs/genie/globalsearch/widgets/-$$Lambda$SearchHeader$3$CRWZgyjiBKe1zFFFObvIdZ7hjO8;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/-$$Lambda$SearchHeader$3$CRWZgyjiBKe1zFFFObvIdZ7hjO8;-><init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$3;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->setOnItemClickListener(Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout$FlowLayoutClickListener;)V

    .line 230
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$3;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;

    new-instance v1, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$3$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$3$1;-><init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$3;Ljava/util/List;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 240
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$3;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->access$100(Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$3;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;

    .line 241
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->access$100(Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 242
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$3;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->searchSuggest:Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->removeAllViews()V

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public run()V
    .locals 3

    .line 209
    new-instance v0, Lcom/alibaba/ailabs/genie/globalsearch/request/AutoSuggestRequest;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$3;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->access$300(Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/globalsearch/request/AutoSuggestRequest;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$3;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/alibaba/ailabs/genie/globalsearch/widgets/-$$Lambda$SearchHeader$3$mtDNZdvtrwx6SkhP7lqkVkO-j_A;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/-$$Lambda$SearchHeader$3$mtDNZdvtrwx6SkhP7lqkVkO-j_A;-><init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$3;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/globalsearch/request/AutoSuggestRequest;->request(Landroid/content/Context;Ljava/util/function/Function;)V

    return-void
.end method
