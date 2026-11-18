.class public interface abstract Lcom/alibaba/ailabs/genie/commonpay/qrcode/IPayMvpView;
.super Ljava/lang/Object;
.source "IPayMvpView.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/commonpay/mvp/IMvpView;


# virtual methods
.method public abstract onCreateOrderFailure(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onCreateOrderSuccess(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onQueryOrderFailure(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onQueryOrderSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract showSearchResultPage(Ljava/util/List;)V
.end method
