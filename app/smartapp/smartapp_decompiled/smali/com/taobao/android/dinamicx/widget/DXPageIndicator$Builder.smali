.class public Lcom/taobao/android/dinamicx/widget/DXPageIndicator$Builder;
.super Ljava/lang/Object;
.source "DXPageIndicator.java"

# interfaces
.implements Lcom/taobao/android/dinamicx/widget/IDXBuilderWidgetNode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/dinamicx/widget/DXPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public build(Ljava/lang/Object;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 0

    .line 58
    new-instance p1, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;

    invoke-direct {p1}, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;-><init>()V

    return-object p1
.end method
