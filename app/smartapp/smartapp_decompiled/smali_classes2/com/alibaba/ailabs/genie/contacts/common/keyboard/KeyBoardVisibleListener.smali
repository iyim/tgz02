.class public Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardVisibleListener;
.super Ljava/lang/Object;
.source "KeyBoardVisibleListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardVisibleListener$OnSoftKeyBoardVisibleListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "KeyBoardVisibleListener"


# instance fields
.field private sLastVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardVisibleListener;->sLastVisible:Z

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardVisibleListener;)Z
    .locals 0

    .line 13
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardVisibleListener;->sLastVisible:Z

    return p0
.end method

.method static synthetic access$002(Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardVisibleListener;Z)Z
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardVisibleListener;->sLastVisible:Z

    return p1
.end method

.method public static getKeyboardHeight(Landroid/app/Activity;)I
    .locals 1

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 44
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 46
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getScreenHeight()I

    move-result p0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public addOnSoftKeyBoardVisibleListener(Landroid/app/Activity;Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardVisibleListener$OnSoftKeyBoardVisibleListener;)V
    .locals 2

    .line 19
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardVisibleListener$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardVisibleListener$1;-><init>(Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardVisibleListener;Landroid/view/View;Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardVisibleListener$OnSoftKeyBoardVisibleListener;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
