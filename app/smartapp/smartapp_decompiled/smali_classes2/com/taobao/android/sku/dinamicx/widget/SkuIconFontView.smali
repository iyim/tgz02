.class public Lcom/taobao/android/sku/dinamicx/widget/SkuIconFontView;
.super Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;
.source "SkuIconFontView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/sku/dinamicx/widget/SkuIconFontView$Builder;
    }
.end annotation


# static fields
.field public static final DX_WIDGET_ID:J

.field private static final NAME:Ljava/lang/String; = "skuIconFontView"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "skuIconFontView"

    .line 21
    invoke-static {v0}, Lcom/taobao/android/dinamicx/template/utils/DXHashUtil;->hash(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/taobao/android/sku/dinamicx/widget/SkuIconFontView;->DX_WIDGET_ID:J

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public build(Ljava/lang/Object;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 25
    new-instance p1, Lcom/taobao/android/sku/dinamicx/widget/SkuIconFontView;

    invoke-direct {p1}, Lcom/taobao/android/sku/dinamicx/widget/SkuIconFontView;-><init>()V

    return-object p1
.end method

.method public onClone(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Z)V
    .locals 0

    .line 30
    invoke-super {p0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->onClone(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .line 49
    new-instance v0, Lcom/taobao/android/sku/widget/IconFontView;

    invoke-direct {v0, p1}, Lcom/taobao/android/sku/widget/IconFontView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onSetStringAttribute(JLjava/lang/String;)V
    .locals 0

    .line 35
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->onSetStringAttribute(JLjava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
