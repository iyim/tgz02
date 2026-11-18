.class public Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;
.super Landroid/widget/LinearLayout;
.source "SearchHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$SearchEvent;
    }
.end annotation


# instance fields
.field private editText:Landroid/widget/EditText;

.field private isInputFocused:Z

.field private lastAutoSuggest:Ljava/lang/String;

.field lastQueryWord:Ljava/lang/String;

.field runnable:Ljava/lang/Runnable;

.field searchEvent:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$SearchEvent;

.field searchSuggest:Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;

.field private shading:Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;

.field private tabList:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    .line 38
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->lastAutoSuggest:Ljava/lang/String;

    const/4 v1, 0x0

    .line 58
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->isInputFocused:Z

    .line 179
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->lastQueryWord:Ljava/lang/String;

    .line 206
    new-instance v0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$3;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$3;-><init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->runnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, ""

    .line 38
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->lastAutoSuggest:Ljava/lang/String;

    const/4 v1, 0x0

    .line 58
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->isInputFocused:Z

    .line 179
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->lastQueryWord:Ljava/lang/String;

    .line 206
    new-instance v0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$3;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$3;-><init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->runnable:Ljava/lang/Runnable;

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p3, ""

    .line 38
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->lastAutoSuggest:Ljava/lang/String;

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->isInputFocused:Z

    .line 179
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->lastQueryWord:Ljava/lang/String;

    .line 206
    new-instance p3, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$3;

    invoke-direct {p3, p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$3;-><init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;)V

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->runnable:Ljava/lang/Runnable;

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->updateSearchSuggest()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;)Landroid/widget/EditText;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->editText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;)Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->shading:Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->lastAutoSuggest:Ljava/lang/String;

    return-object p0
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 60
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/alibaba/ailabs/genie/globalsearch/R$layout;->gs_search_header:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 61
    sget p2, Lcom/alibaba/ailabs/genie/globalsearch/R$id;->edit_text:I

    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->editText:Landroid/widget/EditText;

    .line 62
    sget p2, Lcom/alibaba/ailabs/genie/globalsearch/R$id;->tab_list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->tabList:Landroid/widget/LinearLayout;

    .line 63
    sget p2, Lcom/alibaba/ailabs/genie/globalsearch/R$id;->searchSuggest:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->searchSuggest:Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;

    .line 64
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->searchSuggest:Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;

    sget-object p2, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout$Orientation;->horizontal:Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout$Orientation;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->setOrientation(Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout$Orientation;)V

    .line 65
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->searchSuggest:Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;

    const/16 p2, 0x10

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->setHorizontalGap(I)V

    .line 66
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->editText:Landroid/widget/EditText;

    new-instance p2, Lcom/alibaba/ailabs/genie/globalsearch/widgets/-$$Lambda$SearchHeader$BEYSTpJ5LkUspm_klr4rzw27JI8;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/-$$Lambda$SearchHeader$BEYSTpJ5LkUspm_klr4rzw27JI8;-><init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 77
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->editText:Landroid/widget/EditText;

    new-instance p2, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$1;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$1;-><init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 89
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->editText:Landroid/widget/EditText;

    new-instance p2, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$2;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$2;-><init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method private setTabItemSelected(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    .line 264
    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 265
    sget p2, Lcom/alibaba/ailabs/genie/globalsearch/R$drawable;->gs_text_bg_shape_34:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const-string p2, "#FFFFFF"

    .line 266
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 267
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto :goto_0

    :cond_0
    const p2, 0x106000d

    .line 269
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const-string p2, "#4A5A78"

    .line 270
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 271
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    :goto_0
    return-void
.end method

.method private updateSearchSuggest()V
    .locals 3

    .line 250
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->isInputFocused:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 252
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->shading:Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;

    if-eqz v1, :cond_0

    .line 253
    sget-object v0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->inputPage:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    new-instance v1, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;-><init>()V

    const-string v2, "underwave"

    .line 254
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;->withExpType(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->shading:Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->getExtend()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;->withExtendInfo(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;->build()Ljava/util/HashMap;

    move-result-object v1

    .line 253
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTManager;->exposeUT(Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;Ljava/util/Map;)V

    return-void

    .line 257
    :cond_0
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->lastAutoSuggest:Ljava/lang/String;

    .line 258
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 259
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->runnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public focusOnEdit()V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method public getQueryWord()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->lastQueryWord:Ljava/lang/String;

    return-object v0
.end method

.method public hideInputMethod()V
    .locals 3

    const/4 v0, 0x0

    .line 188
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->isInputFocused:Z

    .line 189
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 190
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 191
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 192
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->editText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->lastQueryWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->searchSuggest:Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->removeAllViews()V

    return-void
.end method

.method public synthetic lambda$initView$16$SearchHeader(Landroid/view/View;Z)V
    .locals 1

    .line 67
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " editText OnFocusChanged hasFocus: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/SearchLog;->d(Ljava/lang/String;)V

    .line 68
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->searchEvent:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$SearchEvent;

    if-eqz p1, :cond_0

    .line 69
    invoke-interface {p1, p2}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$SearchEvent;->onEditFocused(Z)V

    .line 71
    :cond_0
    iput-boolean p2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->isInputFocused:Z

    .line 72
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->searchSuggest:Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->setVisibility(I)V

    if-eqz p2, :cond_2

    .line 74
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->updateSearchSuggest()V

    :cond_2
    return-void
.end method

.method public synthetic lambda$setTabList$17$SearchHeader(Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean$TabBean;Ljava/util/HashMap;Landroid/view/View;)V
    .locals 1

    .line 144
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " Search from Tab, tabBean: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/alibaba/ailabs/genie/globalsearch/utils/SearchLog;->d(Ljava/lang/String;)V

    .line 145
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->searchEvent:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$SearchEvent;

    invoke-interface {p3, p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$SearchEvent;->onTabClicked(Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean$TabBean;)V

    .line 146
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;

    move-result-object p3

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean$TabBean;->getDomain()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->setTabName(Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->getPageState()Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTManager;->clickUT(Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;Ljava/util/Map;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 277
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 280
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public setQueryWord(Ljava/lang/String;)V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->lastQueryWord:Ljava/lang/String;

    return-void
.end method

.method public setSearchEvent(Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$SearchEvent;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->searchEvent:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$SearchEvent;

    return-void
.end method

.method public setShading(Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 172
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->shading:Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;

    .line 173
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 174
    sget-object v0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->hotListPage:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    new-instance v1, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;-><init>()V

    const-string v2, "underwave"

    .line 175
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;->withExpType(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->getExtend()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;->withExtendInfo(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;->build()Ljava/util/HashMap;

    move-result-object p1

    .line 174
    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTManager;->exposeUT(Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public setTabList(Ljava/util/List;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean$TabBean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->tabList:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    if-eqz p1, :cond_4

    .line 125
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    if-nez p2, :cond_0

    const-string p2, "all"

    .line 127
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean$TabBean;

    .line 128
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean$TabBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean$TabBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 131
    :cond_2
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 132
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean$TabBean;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean$TabBean;->getDomain()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 134
    invoke-direct {p0, v3, p2}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->setTabItemSelected(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 135
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 136
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x40400000    # 3.0f

    invoke-static {v5, v6}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/16 v5, 0x10

    .line 137
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 138
    invoke-virtual {v3, v0, v2, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v2, 0x41b00000    # 22.0f

    .line 139
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v2, 0x1

    .line 140
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 141
    new-instance v2, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;

    invoke-direct {v2}, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;-><init>()V

    const-string v5, "tab"

    invoke-virtual {v2, v5}, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;->withExpType(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean$TabBean;->getExtend()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;->withExtendInfo(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;->build()Ljava/util/HashMap;

    move-result-object v2

    .line 142
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean$TabBean;->getDomain()Ljava/lang/String;

    move-result-object v5

    const-string v6, "tab_name"

    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    new-instance v5, Lcom/alibaba/ailabs/genie/globalsearch/widgets/-$$Lambda$SearchHeader$T7Yi5sGUJ0Qfa2_Md9Ed_HBX2SY;

    invoke-direct {v5, p0, v1, v2}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/-$$Lambda$SearchHeader$T7Yi5sGUJ0Qfa2_Md9Ed_HBX2SY;-><init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean$TabBean;Ljava/util/HashMap;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->tabList:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;->getPageState()Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTManager;->exposeUT(Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 152
    :cond_3
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->tabList:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public setTabListVisible(Z)V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->tabList:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public updateFocusDomain(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->tabList:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 162
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->tabList:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-direct {p0, v2, p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->setTabItemSelected(Landroid/widget/TextView;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
