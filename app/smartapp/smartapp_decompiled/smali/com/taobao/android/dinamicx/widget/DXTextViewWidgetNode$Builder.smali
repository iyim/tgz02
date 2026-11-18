.class public Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode$Builder;
.super Ljava/lang/Object;
.source "DXTextViewWidgetNode.java"

# interfaces
.implements Lcom/taobao/android/dinamicx/widget/IDXBuilderWidgetNode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 127
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

    .line 130
    new-instance p1, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;

    invoke-direct {p1}, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;-><init>()V

    return-object p1
.end method
