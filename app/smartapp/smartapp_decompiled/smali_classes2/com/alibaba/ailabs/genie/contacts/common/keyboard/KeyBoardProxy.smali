.class public Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy;
.super Ljava/lang/Object;
.source "KeyBoardProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy$OnHideInputForceListener;
    }
.end annotation


# instance fields
.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final mFilterViewByIds:[Landroid/view/View;

.field private final mHideSoftByEditViewIds:[I

.field private final mOnHideInputForceListener:Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy$OnHideInputForceListener;


# direct methods
.method private constructor <init>(Landroid/app/Activity;[I[Landroid/view/View;Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy$OnHideInputForceListener;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy;->mActivity:Ljava/lang/ref/WeakReference;

    .line 31
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy;->mHideSoftByEditViewIds:[I

    .line 32
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy;->mFilterViewByIds:[Landroid/view/View;

    .line 33
    iput-object p4, p0, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy;->mOnHideInputForceListener:Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy$OnHideInputForceListener;

    return-void
.end method

.method private varargs isFocusEditText(Landroid/view/View;[I)Z
    .locals 5

    .line 100
    instance-of v0, p1, Landroid/widget/EditText;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 101
    check-cast p1, Landroid/widget/EditText;

    .line 102
    array-length v0, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p2, v2

    .line 103
    invoke-virtual {p1}, Landroid/widget/EditText;->getId()I

    move-result v4

    if-ne v4, v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private isTouchView([ILandroid/view/MotionEvent;)Z
    .locals 10

    const/4 v0, 0x2

    .line 143
    new-array v0, v0, [I

    .line 144
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 147
    :cond_0
    array-length v1, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget v4, p1, v3

    .line 148
    iget-object v5, p0, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 152
    :cond_1
    invoke-virtual {v4, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 153
    aget v5, v0, v2

    const/4 v6, 0x1

    .line 154
    aget v7, v0, v6

    .line 155
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    int-to-float v9, v5

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v5, v9

    int-to-float v5, v5

    cmpg-float v5, v8, v5

    if-gez v5, :cond_2

    .line 156
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    int-to-float v8, v7

    cmpl-float v5, v5, v8

    if-lez v5, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v7, v4

    int-to-float v4, v7

    cmpg-float v4, v5, v4

    if-gez v4, :cond_2

    return v6

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public static newInstance(Landroid/app/Activity;[I[Landroid/view/View;Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy$OnHideInputForceListener;)Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy;
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 38
    new-array p2, p2, [Landroid/view/View;

    .line 40
    :cond_0
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy;-><init>(Landroid/app/Activity;[I[Landroid/view/View;Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy$OnHideInputForceListener;)V

    return-object v0
.end method


# virtual methods
.method public varargs clearViewFocus(Landroid/view/View;[I)V
    .locals 4

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 82
    array-length v0, p2

    if-lez v0, :cond_1

    .line 83
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p2, v1

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public isTouchView([Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 119
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    .line 122
    new-array v1, v1, [I

    .line 123
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    .line 124
    invoke-virtual {v4, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 125
    aget v5, v1, v0

    const/4 v6, 0x1

    .line 126
    aget v7, v1, v6

    .line 127
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    int-to-float v9, v5

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v5, v9

    int-to-float v5, v5

    cmpg-float v5, v8, v5

    if-gez v5, :cond_1

    .line 128
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    int-to-float v8, v7

    cmpl-float v5, v5, v8

    if-lez v5, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v7, v4

    int-to-float v4, v7

    cmpg-float v4, v5, v4

    if-gez v4, :cond_1

    return v6

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public onDispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2

    .line 53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 54
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy;->mFilterViewByIds:[Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy;->isTouchView([Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy;->mHideSoftByEditViewIds:[I

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy;->mHideSoftByEditViewIds:[I

    invoke-direct {p0, v0, v1}, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy;->isFocusEditText(Landroid/view/View;[I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 62
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy;->mHideSoftByEditViewIds:[I

    invoke-direct {p0, v1, p1}, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy;->isTouchView([ILandroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 66
    :cond_2
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardUtils;->hideInputForce(Landroid/app/Activity;)V

    .line 67
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy;->mHideSoftByEditViewIds:[I

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy;->clearViewFocus(Landroid/view/View;[I)V

    .line 68
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy;->mOnHideInputForceListener:Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy$OnHideInputForceListener;

    if-eqz v0, :cond_3

    .line 69
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy$OnHideInputForceListener;->onHideInputForce(Landroid/view/MotionEvent;)V

    nop

    :cond_3
    :goto_0
    return-void
.end method
