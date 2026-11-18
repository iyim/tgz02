.class Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$2;
.super Ljava/lang/Object;
.source "SearchHeader.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    .line 89
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$2;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 p1, 0x0

    if-nez p3, :cond_0

    return p1

    :cond_0
    const/4 v0, 0x4

    if-eq p2, v0, :cond_2

    .line 95
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/16 p3, 0x42

    if-ne p2, p3, :cond_1

    goto :goto_0

    :cond_1
    return p1

    .line 96
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$2;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->searchEvent:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$SearchEvent;

    const/4 p2, 0x1

    if-eqz p1, :cond_6

    .line 97
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$2;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->access$100(Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, ""

    if-eqz p1, :cond_4

    .line 98
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 106
    :cond_3
    sget-object p3, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->inputPage:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    const/4 v0, 0x0

    const-string v1, "enter_pad"

    invoke-static {p3, v1, v0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTManager;->clickUT(Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 99
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$2;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->access$100(Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$2;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->access$100(Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    .line 102
    :cond_5
    sget-object p1, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->inputPage:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    new-instance p3, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;

    invoke-direct {p3}, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;-><init>()V

    const-string v0, "underwave"

    .line 103
    invoke-virtual {p3, v0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;->withExpType(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;

    move-result-object p3

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$2;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->access$200(Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;)Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->getExtend()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;->withExtendInfo(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;

    move-result-object p3

    invoke-virtual {p3}, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;->build()Ljava/util/HashMap;

    move-result-object p3

    .line 102
    invoke-static {p1, p3}, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTManager;->clickUT(Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;Ljava/util/Map;)V

    .line 104
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$2;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->access$100(Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 108
    :goto_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " onSearchString: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/alibaba/ailabs/genie/globalsearch/utils/SearchLog;->d(Ljava/lang/String;)V

    .line 109
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$2;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;

    iget-object p3, p3, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->searchEvent:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$SearchEvent;

    invoke-interface {p3, p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$SearchEvent;->onSearchByString(Ljava/lang/String;)V

    nop

    :cond_6
    :goto_3
    return p2
.end method
