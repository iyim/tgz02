.class public Lcom/taobao/android/sku/dinamicx/widget/RichTextView$Builder;
.super Ljava/lang/Object;
.source "RichTextView.java"

# interfaces
.implements Lcom/taobao/android/dinamicx/widget/IDXBuilderWidgetNode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/sku/dinamicx/widget/RichTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 450
    new-instance p1, Lcom/taobao/android/sku/dinamicx/widget/RichTextView;

    invoke-direct {p1}, Lcom/taobao/android/sku/dinamicx/widget/RichTextView;-><init>()V

    return-object p1
.end method
