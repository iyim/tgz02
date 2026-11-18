.class public Lcom/taobao/android/dinamicx/widget/DXListLayout;
.super Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;
.source "DXListLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/dinamicx/widget/DXListLayout$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;-><init>()V

    .line 19
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXListLayout;->propertyInitFlag:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXListLayout;->propertyInitFlag:I

    return-void
.end method


# virtual methods
.method public build(Ljava/lang/Object;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 38
    new-instance p1, Lcom/taobao/android/dinamicx/widget/DXListLayout;

    invoke-direct {p1}, Lcom/taobao/android/dinamicx/widget/DXListLayout;-><init>()V

    return-object p1
.end method

.method protected onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .line 33
    new-instance v0, Lcom/taobao/android/dinamicx/view/DXNativeListLayout;

    invoke-direct {v0, p1}, Lcom/taobao/android/dinamicx/view/DXNativeListLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
