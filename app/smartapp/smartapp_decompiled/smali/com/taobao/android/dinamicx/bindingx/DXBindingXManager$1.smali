.class Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager$1;
.super Ljava/lang/Object;
.source "DXBindingXManager.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/plugin/android/NativeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->bindAnimation(Lcom/taobao/android/dinamicx/DXRootView;Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;

.field final synthetic val$animationWT:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

.field final synthetic val$finalTransSpec:Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;

.field final synthetic val$rootView:Lcom/taobao/android/dinamicx/DXRootView;


# direct methods
.method constructor <init>(Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;Lcom/taobao/android/dinamicx/DXRootView;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)V
    .locals 0

    .line 774
    iput-object p1, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager$1;->this$0:Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;

    iput-object p2, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager$1;->val$finalTransSpec:Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;

    iput-object p3, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager$1;->val$rootView:Lcom/taobao/android/dinamicx/DXRootView;

    iput-object p4, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager$1;->val$animationWT:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "token"

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 781
    :try_start_0
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 782
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/android/dinamicx/log/DXLog;->print(Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v2, "state"

    .line 784
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 785
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v3, "exit"

    .line 786
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-string/jumbo v6, "timing"

    if-eqz v3, :cond_6

    .line 787
    :try_start_1
    iget-object v2, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager$1;->val$finalTransSpec:Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;

    iget-object v2, v2, Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;->token:Ljava/util/Map;

    if-nez v2, :cond_2

    return-void

    .line 790
    :cond_2
    iget-object v2, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager$1;->val$finalTransSpec:Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;

    iget-object v2, v2, Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;->token:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 791
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 794
    :cond_3
    iget-object p1, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager$1;->this$0:Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;

    iget-object v0, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager$1;->val$finalTransSpec:Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;

    invoke-static {p1, v1, v0}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->access$000(Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;Ljava/util/Map;Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;)V

    .line 796
    iget-object p1, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager$1;->val$finalTransSpec:Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;

    iget-boolean p1, p1, Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;->repeat:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager$1;->val$finalTransSpec:Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;

    iget-object p1, p1, Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;->eventType:Ljava/lang/String;

    .line 797
    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 798
    iget-object p1, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager$1;->this$0:Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;

    iget-object v0, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager$1;->val$rootView:Lcom/taobao/android/dinamicx/DXRootView;

    iget-object v2, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager$1;->val$finalTransSpec:Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;

    iget-object v3, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager$1;->val$animationWT:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    invoke-virtual {p1, v0, v2, v3}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->bindAnimation(Lcom/taobao/android/dinamicx/DXRootView;Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)V

    goto :goto_0

    .line 800
    :cond_4
    iget-object p1, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager$1;->val$finalTransSpec:Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;

    iget-boolean p1, p1, Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;->resetOnFinish:Z

    if-eqz p1, :cond_5

    .line 801
    iget-object p1, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager$1;->this$0:Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;

    iget-object v0, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager$1;->val$animationWT:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    iget-object v2, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager$1;->val$finalTransSpec:Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;

    iget-object v3, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager$1;->val$finalTransSpec:Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;

    iget-boolean v3, v3, Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;->updateFlattenOnlyOnFinish:Z

    invoke-static {p1, v0, v2, v4, v3}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->access$100(Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;IZ)V

    goto :goto_0

    .line 803
    :cond_5
    iget-object p1, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager$1;->this$0:Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;

    iget-object v0, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager$1;->val$animationWT:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    iget-object v2, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager$1;->val$finalTransSpec:Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;

    iget-object v3, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager$1;->val$finalTransSpec:Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;

    iget-boolean v3, v3, Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;->updateFlattenOnlyOnFinish:Z

    invoke-static {p1, v0, v2, v5, v3}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->access$100(Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;IZ)V

    .line 807
    :goto_0
    iget-object p1, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager$1;->this$0:Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;

    iget-object v0, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager$1;->val$rootView:Lcom/taobao/android/dinamicx/DXRootView;

    iget-object v2, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager$1;->val$animationWT:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    iget-object v3, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager$1;->val$finalTransSpec:Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;

    invoke-static {p1, v0, v2, v3}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->access$200(Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;Lcom/taobao/android/dinamicx/DXRootView;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;)V

    .line 809
    iget-object p1, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager$1;->this$0:Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;

    iget-object v0, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager$1;->val$animationWT:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    const-wide v2, -0x48112af35f9df99fL    # -2.8314925808915324E-39

    iget-object v4, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager$1;->val$finalTransSpec:Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;

    iget-object v4, v4, Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v2, v3, v4}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->postEvent(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;JLjava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    const-string/jumbo p1, "start"

    .line 813
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const-wide v7, -0xe3eb03b410c3df3L    # -9.018278985360108E239

    if-eqz p1, :cond_7

    .line 815
    iget-object p1, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager$1;->val$finalTransSpec:Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;

    iget-object p1, p1, Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;->eventType:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 816
    iget-object p1, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager$1;->this$0:Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;

    iget-object v0, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager$1;->val$animationWT:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    iget-object v2, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager$1;->val$finalTransSpec:Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;

    iget-object v2, v2, Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v7, v8, v2}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->postEvent(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;JLjava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    const-string p1, "end"

    .line 820
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto/16 :goto_2

    :cond_8
    const-string/jumbo p1, "scrollStart"

    .line 830
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 831
    iget-object p1, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager$1;->this$0:Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;

    iget-object v0, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager$1;->val$animationWT:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    iget-object v2, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager$1;->val$finalTransSpec:Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;

    iget-object v2, v2, Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v7, v8, v2}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->postEvent(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;JLjava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    const-string/jumbo p1, "scrollEnd"

    .line 834
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 836
    iget-object p1, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager$1;->val$finalTransSpec:Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;

    iget-object p1, p1, Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;->exitExpression:Lcom/alibaba/fastjson/JSONObject;

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager$1;->val$finalTransSpec:Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;

    iget-object p1, p1, Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;->exitExpression:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 837
    :cond_a
    iget-object p1, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager$1;->val$finalTransSpec:Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;

    iget-boolean p1, p1, Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;->resetOnFinish:Z

    if-eqz p1, :cond_b

    .line 838
    iget-object p1, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager$1;->this$0:Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;

    iget-object v0, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager$1;->val$animationWT:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    iget-object v2, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager$1;->val$finalTransSpec:Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;

    iget-object v3, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager$1;->val$finalTransSpec:Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;

    iget-boolean v3, v3, Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;->updateFlattenOnlyOnFinish:Z

    invoke-static {p1, v0, v2, v4, v3}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->access$100(Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;IZ)V

    goto :goto_1

    .line 840
    :cond_b
    iget-object p1, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager$1;->this$0:Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;

    iget-object v0, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager$1;->val$animationWT:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    iget-object v2, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager$1;->val$finalTransSpec:Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;

    iget-object v3, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager$1;->val$finalTransSpec:Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;

    iget-boolean v3, v3, Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;->updateFlattenOnlyOnFinish:Z

    invoke-static {p1, v0, v2, v5, v3}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->access$100(Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;IZ)V

    .line 843
    :cond_c
    :goto_1
    iget-object p1, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager$1;->this$0:Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;

    iget-object v0, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager$1;->val$animationWT:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    const-wide v2, 0x5cd5ef47d712a8a4L

    iget-object v4, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager$1;->val$finalTransSpec:Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;

    iget-object v4, v4, Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v2, v3, v4}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->postEvent(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;JLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 849
    invoke-static {p1}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->printStack(Ljava/lang/Throwable;)V

    .line 851
    iget-object v0, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager$1;->val$animationWT:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 852
    iget-object v0, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager$1;->val$animationWT:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getBizType()Ljava/lang/String;

    move-result-object v1

    .line 854
    :cond_d
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v1, "dinamicx"

    :cond_e
    move-object v2, v1

    const/4 v3, 0x0

    const v6, 0x1d8ad

    .line 861
    invoke-static {p1}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    const-string v4, "DX_BindingX"

    const-string v5, "DX_BindingX_Crash"

    .line 857
    invoke-static/range {v2 .. v7}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerError(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_f
    :goto_2
    return-void
.end method
