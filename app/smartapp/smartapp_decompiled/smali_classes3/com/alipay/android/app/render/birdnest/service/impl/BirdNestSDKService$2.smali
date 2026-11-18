.class Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService$2;
.super Ljava/lang/Object;
.source "BirdNestSDKService.java"

# interfaces
.implements Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->getEventHandler(Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;)Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;

.field final synthetic val$builder:Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService$2;->this$0:Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;

    iput-object p2, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService$2;->val$builder:Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAsyncEvent(Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler$EventType;Ljava/lang/String;Lcom/alipay/android/app/template/ITemplateClickCallback;)Z
    .locals 0

    .line 257
    iget-object p1, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService$2;->val$builder:Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;

    iget-object p1, p1, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->mCallbackProxy:Lcom/alipay/android/app/render/birdnest/RenderCallbackProxy;

    if-eqz p1, :cond_0

    .line 258
    iget-object p1, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService$2;->val$builder:Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;

    iget-object p1, p1, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->mCallbackProxy:Lcom/alipay/android/app/render/birdnest/RenderCallbackProxy;

    invoke-virtual {p1, p3, p2}, Lcom/alipay/android/app/render/birdnest/RenderCallbackProxy;->onAsyncEvent(Lcom/alipay/android/app/template/ITemplateClickCallback;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onEvent(Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler$EventType;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;)Z
    .locals 0

    .line 249
    iget-object p1, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService$2;->val$builder:Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;

    iget-object p1, p1, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->mCallbackProxy:Lcom/alipay/android/app/render/birdnest/RenderCallbackProxy;

    if-eqz p1, :cond_0

    .line 250
    iget-object p1, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService$2;->val$builder:Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;

    iget-object p1, p1, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->mCallbackProxy:Lcom/alipay/android/app/render/birdnest/RenderCallbackProxy;

    invoke-virtual {p3}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alipay/android/app/render/birdnest/RenderCallbackProxy;->onEvent(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onGetCustomAttr(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService$2;->val$builder:Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;

    iget-object v0, v0, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->mCallbackProxy:Lcom/alipay/android/app/render/birdnest/RenderCallbackProxy;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService$2;->val$builder:Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;

    iget-object v0, v0, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->mCallbackProxy:Lcom/alipay/android/app/render/birdnest/RenderCallbackProxy;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/render/birdnest/RenderCallbackProxy;->onGetCustomAttr(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method
