.class public interface abstract Lcom/alibaba/ailabs/genie/commonpay/GeniePayManager$QrcodePayResultCallback;
.super Ljava/lang/Object;
.source "GeniePayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/commonpay/GeniePayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "QrcodePayResultCallback"
.end annotation


# virtual methods
.method public abstract payFailure(Lcom/alibaba/fastjson/JSONObject;ILjava/lang/String;)V
.end method

.method public abstract paySuccess(Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONObject;)V
.end method
