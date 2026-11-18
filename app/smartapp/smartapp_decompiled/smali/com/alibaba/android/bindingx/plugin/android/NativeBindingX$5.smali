.class Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX$5;
.super Ljava/lang/Object;
.source "NativeBindingX.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/BindingXCore$JavaScriptCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX;->bind(Landroid/view/View;Ljava/util/Map;Lcom/alibaba/android/bindingx/plugin/android/NativeCallback;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX;

.field final synthetic val$callback:Lcom/alibaba/android/bindingx/plugin/android/NativeCallback;


# direct methods
.method constructor <init>(Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX;Lcom/alibaba/android/bindingx/plugin/android/NativeCallback;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX$5;->this$0:Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX;

    iput-object p2, p0, Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX$5;->val$callback:Lcom/alibaba/android/bindingx/plugin/android/NativeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/Object;)V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX$5;->val$callback:Lcom/alibaba/android/bindingx/plugin/android/NativeCallback;

    if-eqz v0, :cond_0

    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 175
    check-cast p1, Ljava/util/Map;

    invoke-interface {v0, p1}, Lcom/alibaba/android/bindingx/plugin/android/NativeCallback;->callback(Ljava/util/Map;)V

    :cond_0
    return-void
.end method
