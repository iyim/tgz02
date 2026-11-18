.class Lcom/alibaba/ailabs/tg/network/mtop/MtopConverterFactory$1;
.super Ljava/lang/Object;
.source "MtopConverterFactory.java"

# interfaces
.implements Lcom/alibaba/ailabs/tg/network/Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/tg/network/mtop/MtopConverterFactory;->responseConverter(Ljava/lang/reflect/Type;)Lcom/alibaba/ailabs/tg/network/Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/ailabs/tg/network/Converter<",
        "Lmtopsdk/mtop/domain/BaseOutDo;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/tg/network/mtop/MtopConverterFactory;

.field final synthetic val$rawClass:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/tg/network/mtop/MtopConverterFactory;Ljava/lang/Class;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopConverterFactory$1;->this$0:Lcom/alibaba/ailabs/tg/network/mtop/MtopConverterFactory;

    iput-object p2, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopConverterFactory$1;->val$rawClass:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 24
    check-cast p1, Lmtopsdk/mtop/domain/BaseOutDo;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/tg/network/mtop/MtopConverterFactory$1;->convert(Lmtopsdk/mtop/domain/BaseOutDo;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public convert(Lmtopsdk/mtop/domain/BaseOutDo;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lmtopsdk/mtop/domain/BaseOutDo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 28
    const-class v0, Lmtopsdk/mtop/domain/BaseOutDo;

    iget-object v1, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopConverterFactory$1;->val$rawClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    const-class v0, Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;

    iget-object v2, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopConverterFactory$1;->val$rawClass:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/BaseOutDo;->getData()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/BaseOutDo;->getData()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 36
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string v0, "model"

    .line 37
    iget-object v2, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopConverterFactory$1;->val$rawClass:Ljava/lang/Class;

    invoke-virtual {p1, v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopConverterFactory$1;->val$rawClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v2, :cond_2

    goto :goto_0

    :catch_0
    move-exception p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/ClassCastException;->printStackTrace()V

    :cond_2
    move-object p1, v1

    :goto_0
    return-object p1
.end method
