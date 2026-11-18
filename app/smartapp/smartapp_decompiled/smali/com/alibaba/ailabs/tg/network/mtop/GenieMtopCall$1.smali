.class Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall$1;
.super Ljava/lang/Object;
.source "GenieMtopCall.java"

# interfaces
.implements Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;->enqueue(Lcom/alibaba/ailabs/tg/network/Callback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;

.field final synthetic val$requestType:I


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;I)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall$1;->this$0:Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;

    iput p2, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall$1;->val$requestType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponseFailed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 132
    iget-object p4, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall$1;->this$0:Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;

    invoke-static {p4}, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;->access$000(Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;)Lcom/alibaba/ailabs/tg/network/Callback;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 133
    iget-object p4, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall$1;->this$0:Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;

    invoke-static {p4}, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;->access$000(Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;)Lcom/alibaba/ailabs/tg/network/Callback;

    move-result-object p4

    invoke-interface {p4, p1, p2, p3}, Lcom/alibaba/ailabs/tg/network/Callback;->onFailure(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onResponseSuccess(Lmtopsdk/mtop/domain/BaseOutDo;ILjava/lang/Object;)V
    .locals 1

    .line 86
    iget-object p2, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall$1;->this$0:Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;

    invoke-static {p2}, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;->access$000(Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;)Lcom/alibaba/ailabs/tg/network/Callback;

    move-result-object p2

    if-eqz p2, :cond_4

    const/4 p2, 0x0

    .line 89
    instance-of p3, p1, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopResp;

    if-eqz p3, :cond_0

    .line 91
    :try_start_0
    iget-object p2, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall$1;->this$0:Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;

    invoke-static {p2}, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;->access$100(Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;)Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod;

    move-result-object p2

    iget-object p2, p2, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod;->outClass:Ljava/lang/Class;

    const-string p3, "data"

    .line 92
    invoke-virtual {p2, p3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    .line 93
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object p2

    check-cast p2, Ljava/lang/Class;

    .line 94
    iget-object p3, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall$1;->this$0:Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;

    nop

    nop

    iget v0, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall$1;->val$requestType:I

    invoke-virtual {p3, p1, p2, v0}, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;->fixDoubleModel(Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopResp;Ljava/lang/Class;I)Z
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 99
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 97
    invoke-virtual {p1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 101
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall$1;->this$0:Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;

    invoke-static {p1}, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;->access$000(Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;)Lcom/alibaba/ailabs/tg/network/Callback;

    move-result-object p1

    iget p2, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall$1;->val$requestType:I

    const-string p3, "HSF_ERROR"

    const-string v0, "parse hsf data error"

    invoke-interface {p1, p2, p3, v0}, Lcom/alibaba/ailabs/tg/network/Callback;->onFailure(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_3

    .line 107
    iget-object p3, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall$1;->this$0:Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;

    invoke-static {p3}, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;->access$200(Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;)Lcom/alibaba/ailabs/tg/network/Converter$Factory;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 108
    iget-object p3, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall$1;->this$0:Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;

    invoke-static {p3}, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;->access$200(Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;)Lcom/alibaba/ailabs/tg/network/Converter$Factory;

    move-result-object p3

    iget-object v0, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall$1;->this$0:Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;

    invoke-static {v0}, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;->access$100(Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;)Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod;->responseType:Ljava/lang/reflect/Type;

    invoke-virtual {p3, v0}, Lcom/alibaba/ailabs/tg/network/Converter$Factory;->responseConverter(Ljava/lang/reflect/Type;)Lcom/alibaba/ailabs/tg/network/Converter;

    move-result-object p3

    goto :goto_1

    .line 111
    :cond_1
    new-instance p3, Lcom/alibaba/ailabs/tg/network/mtop/MtopConverterFactory;

    invoke-direct {p3}, Lcom/alibaba/ailabs/tg/network/mtop/MtopConverterFactory;-><init>()V

    iget-object v0, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall$1;->this$0:Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;

    invoke-static {v0}, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;->access$100(Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;)Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod;->responseType:Ljava/lang/reflect/Type;

    invoke-virtual {p3, v0}, Lcom/alibaba/ailabs/tg/network/mtop/MtopConverterFactory;->responseConverter(Ljava/lang/reflect/Type;)Lcom/alibaba/ailabs/tg/network/Converter;

    move-result-object p3

    :goto_1
    if-eqz p3, :cond_2

    .line 114
    invoke-interface {p3, p1}, Lcom/alibaba/ailabs/tg/network/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_2

    move-object p2, p3

    :cond_2
    if-nez p2, :cond_3

    .line 121
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "converter maybe parser error "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall$1;->this$0:Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;

    .line 123
    invoke-static {p1}, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;->access$100(Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;)Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod;

    move-result-object p1

    iget-object p1, p1, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod;->responseType:Ljava/lang/reflect/Type;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 121
    invoke-static {p1}, Lcom/alibaba/ailabs/tg/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 126
    :cond_3
    iget-object p1, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall$1;->this$0:Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;

    invoke-static {p1}, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;->access$000(Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;)Lcom/alibaba/ailabs/tg/network/Callback;

    move-result-object p1

    iget p3, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall$1;->val$requestType:I

    invoke-interface {p1, p3, p2}, Lcom/alibaba/ailabs/tg/network/Callback;->onSuccess(ILjava/lang/Object;)V

    :cond_4
    return-void
.end method
