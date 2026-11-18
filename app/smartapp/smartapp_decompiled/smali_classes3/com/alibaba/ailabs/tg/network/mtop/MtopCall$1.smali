.class Lcom/alibaba/ailabs/tg/network/mtop/MtopCall$1;
.super Ljava/lang/Object;
.source "MtopCall.java"

# interfaces
.implements Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/tg/network/mtop/MtopCall;->enqueue(Lcom/alibaba/ailabs/tg/network/Callback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/tg/network/mtop/MtopCall;

.field final synthetic val$callback:Lcom/alibaba/ailabs/tg/network/Callback;

.field final synthetic val$requestType:I


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/tg/network/mtop/MtopCall;Lcom/alibaba/ailabs/tg/network/Callback;I)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopCall$1;->this$0:Lcom/alibaba/ailabs/tg/network/mtop/MtopCall;

    iput-object p2, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopCall$1;->val$callback:Lcom/alibaba/ailabs/tg/network/Callback;

    iput p3, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopCall$1;->val$requestType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponseFailed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 95
    iget-object p4, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopCall$1;->val$callback:Lcom/alibaba/ailabs/tg/network/Callback;

    if-eqz p4, :cond_0

    .line 96
    invoke-interface {p4, p1, p2, p3}, Lcom/alibaba/ailabs/tg/network/Callback;->onFailure(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onResponseSuccess(Lmtopsdk/mtop/domain/BaseOutDo;ILjava/lang/Object;)V
    .locals 1

    .line 63
    iget-object p2, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopCall$1;->val$callback:Lcom/alibaba/ailabs/tg/network/Callback;

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    if-eqz p1, :cond_3

    .line 70
    iget-object p3, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopCall$1;->this$0:Lcom/alibaba/ailabs/tg/network/mtop/MtopCall;

    invoke-static {p3}, Lcom/alibaba/ailabs/tg/network/mtop/MtopCall;->access$000(Lcom/alibaba/ailabs/tg/network/mtop/MtopCall;)Lcom/alibaba/ailabs/tg/network/Converter$Factory;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 71
    iget-object p3, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopCall$1;->this$0:Lcom/alibaba/ailabs/tg/network/mtop/MtopCall;

    invoke-static {p3}, Lcom/alibaba/ailabs/tg/network/mtop/MtopCall;->access$000(Lcom/alibaba/ailabs/tg/network/mtop/MtopCall;)Lcom/alibaba/ailabs/tg/network/Converter$Factory;

    move-result-object p3

    iget-object v0, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopCall$1;->this$0:Lcom/alibaba/ailabs/tg/network/mtop/MtopCall;

    invoke-static {v0}, Lcom/alibaba/ailabs/tg/network/mtop/MtopCall;->access$100(Lcom/alibaba/ailabs/tg/network/mtop/MtopCall;)Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceMethod;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceMethod;->responseType:Ljava/lang/reflect/Type;

    invoke-virtual {p3, v0}, Lcom/alibaba/ailabs/tg/network/Converter$Factory;->responseConverter(Ljava/lang/reflect/Type;)Lcom/alibaba/ailabs/tg/network/Converter;

    move-result-object p3

    goto :goto_0

    .line 74
    :cond_1
    new-instance p3, Lcom/alibaba/ailabs/tg/network/mtop/MtopConverterFactory;

    invoke-direct {p3}, Lcom/alibaba/ailabs/tg/network/mtop/MtopConverterFactory;-><init>()V

    iget-object v0, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopCall$1;->this$0:Lcom/alibaba/ailabs/tg/network/mtop/MtopCall;

    invoke-static {v0}, Lcom/alibaba/ailabs/tg/network/mtop/MtopCall;->access$100(Lcom/alibaba/ailabs/tg/network/mtop/MtopCall;)Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceMethod;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceMethod;->responseType:Ljava/lang/reflect/Type;

    invoke-virtual {p3, v0}, Lcom/alibaba/ailabs/tg/network/mtop/MtopConverterFactory;->responseConverter(Ljava/lang/reflect/Type;)Lcom/alibaba/ailabs/tg/network/Converter;

    move-result-object p3

    :goto_0
    if-eqz p3, :cond_2

    .line 78
    invoke-interface {p3, p1}, Lcom/alibaba/ailabs/tg/network/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_2

    move-object p2, p3

    :cond_2
    if-nez p2, :cond_3

    .line 85
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "converter maybe parser error "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopCall$1;->this$0:Lcom/alibaba/ailabs/tg/network/mtop/MtopCall;

    .line 87
    invoke-static {p1}, Lcom/alibaba/ailabs/tg/network/mtop/MtopCall;->access$100(Lcom/alibaba/ailabs/tg/network/mtop/MtopCall;)Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceMethod;

    move-result-object p1

    iget-object p1, p1, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceMethod;->responseType:Ljava/lang/reflect/Type;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 85
    invoke-static {p1}, Lcom/alibaba/ailabs/tg/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 90
    :cond_3
    iget-object p1, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopCall$1;->val$callback:Lcom/alibaba/ailabs/tg/network/Callback;

    iget p3, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopCall$1;->val$requestType:I

    invoke-interface {p1, p3, p2}, Lcom/alibaba/ailabs/tg/network/Callback;->onSuccess(ILjava/lang/Object;)V

    return-void
.end method
