.class public Lcom/taobao/android/dinamicx/widget/DXWidgetNode$Builder;
.super Ljava/lang/Object;
.source "DXWidgetNode.java"

# interfaces
.implements Lcom/taobao/android/dinamicx/widget/IDXBuilderWidgetNode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public build(Ljava/lang/Object;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 0

    .line 2123
    new-instance p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    invoke-direct {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;-><init>()V

    return-object p1
.end method
