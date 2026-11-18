.class public Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsLayout;
.super Landroid/support/constraint/ConstraintLayout;
.source "ContactsLayout.java"


# instance fields
.field private mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

.field private mIntercept:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintLayout;-><init>(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/support/constraint/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsLayout;->mIntercept:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 34
    :cond_0
    invoke-super {p0, p1}, Landroid/support/constraint/ConstraintLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsLayout;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->sendEmptyMessage(I)Z

    .line 41
    invoke-super {p0, p1}, Landroid/support/constraint/ConstraintLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setHandler(Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsLayout;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    return-void
.end method

.method public setIntercept(Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsLayout;->mIntercept:Z

    return-void
.end method
