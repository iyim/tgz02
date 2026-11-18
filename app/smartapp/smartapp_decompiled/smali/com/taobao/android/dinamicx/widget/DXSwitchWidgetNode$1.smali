.class Lcom/taobao/android/dinamicx/widget/DXSwitchWidgetNode$1;
.super Ljava/lang/Object;
.source "DXSwitchWidgetNode.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/dinamicx/widget/DXSwitchWidgetNode;->onBindEvent(Landroid/content/Context;Landroid/view/View;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/android/dinamicx/widget/DXSwitchWidgetNode;


# direct methods
.method constructor <init>(Lcom/taobao/android/dinamicx/widget/DXSwitchWidgetNode;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXSwitchWidgetNode$1;->this$0:Lcom/taobao/android/dinamicx/widget/DXSwitchWidgetNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 147
    iget-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXSwitchWidgetNode$1;->this$0:Lcom/taobao/android/dinamicx/widget/DXSwitchWidgetNode;

    invoke-static {p1}, Lcom/taobao/android/dinamicx/widget/DXSwitchWidgetNode;->access$000(Lcom/taobao/android/dinamicx/widget/DXSwitchWidgetNode;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 150
    :cond_0
    new-instance p1, Lcom/taobao/android/dinamicx/expression/event/DXSwitchEvent;

    const-wide v0, 0x49652a47524c602bL    # 3.775989076956713E45

    invoke-direct {p1, v0, v1}, Lcom/taobao/android/dinamicx/expression/event/DXSwitchEvent;-><init>(J)V

    .line 151
    invoke-virtual {p1, p2}, Lcom/taobao/android/dinamicx/expression/event/DXSwitchEvent;->setOn(Z)V

    .line 152
    iget-object p2, p0, Lcom/taobao/android/dinamicx/widget/DXSwitchWidgetNode$1;->this$0:Lcom/taobao/android/dinamicx/widget/DXSwitchWidgetNode;

    invoke-virtual {p2, p1}, Lcom/taobao/android/dinamicx/widget/DXSwitchWidgetNode;->postEvent(Lcom/taobao/android/dinamicx/expression/event/DXEvent;)Z

    return-void
.end method
