.class public Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;
.super Ljava/lang/Object;
.source "EditTextHasNullChecker.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/widget/CheckBox;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;->a:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;->b:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;->c:Ljava/util/Set;

    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;->d:Ljava/util/Set;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hackbyte "

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private a()V
    .locals 4

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;->c:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 94
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;->b()Z

    move-result v0

    .line 95
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    xor-int/lit8 v3, v0, 0x1

    .line 96
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Landroid/view/View;)Z
    .locals 3

    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x1020002

    if-ne v0, v2, :cond_0

    return v1

    .line 136
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/TabHost;

    if-nez v0, :cond_2

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;->a(Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_2
    return v1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private b()Z
    .locals 6

    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, ""

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 102
    invoke-direct {p0, v1}, Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;->a(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v3

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v4, "TextViewIndex"

    .line 111
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Landroid/widget/TextView;

    if-eqz v5, :cond_3

    .line 112
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 114
    invoke-direct {p0, v4}, Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;->a(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    .line 116
    :cond_4
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 117
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TextViewDefalutTxt"

    .line 118
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_5
    return v3

    .line 123
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 124
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    :cond_8
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public addNeedCheckCheckBox(Landroid/widget/CheckBox;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;->a()V

    return-void
.end method

.method public addNeedCheckTextView(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 2

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "TextViewIndex"

    .line 36
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "TextViewDefalutTxt"

    .line 37
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;->a()V

    return-void
.end method

.method public addNeedCheckView(Landroid/widget/EditText;)V
    .locals 1

    .line 29
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;->a()V

    return-void
.end method

.method public addNeedEnabledButton(Landroid/widget/Button;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;->a()V

    :cond_0
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;->a()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 149
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;->a()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public removeButton(Landroid/widget/Button;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeNeedCheckView(Landroid/widget/EditText;)V
    .locals 1

    .line 51
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 53
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/validator/EditTextHasNullChecker;->a()V

    return-void
.end method
