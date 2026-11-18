.class Lcom/taobao/android/dinamicx/widget/DXWidgetNode$1;
.super Ljava/lang/Object;
.source "DXWidgetNode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->onBindEvent(Landroid/content/Context;Landroid/view/View;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;


# direct methods
.method constructor <init>(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)V
    .locals 0

    .line 1746
    iput-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$1;->this$0:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1749
    iget-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$1;->this$0:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->onTapEvent()V

    return-void
.end method
