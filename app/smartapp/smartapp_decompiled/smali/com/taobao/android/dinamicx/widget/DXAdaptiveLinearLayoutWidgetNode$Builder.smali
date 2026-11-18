.class public Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode$Builder;
.super Ljava/lang/Object;
.source "DXAdaptiveLinearLayoutWidgetNode.java"

# interfaces
.implements Lcom/taobao/android/dinamicx/widget/IDXBuilderWidgetNode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public build(Ljava/lang/Object;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 0

    .line 46
    new-instance p1, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;

    invoke-direct {p1}, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;-><init>()V

    return-object p1
.end method
