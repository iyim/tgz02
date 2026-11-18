.class public Lcom/alibaba/ailabs/tg/network/mtop/MtopConverterFactory;
.super Lcom/alibaba/ailabs/tg/network/Converter$Factory;
.source "MtopConverterFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/alibaba/ailabs/tg/network/Converter$Factory;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public responseConverter(Ljava/lang/reflect/Type;)Lcom/alibaba/ailabs/tg/network/Converter;
    .locals 1
    .param p1    # Ljava/lang/reflect/Type;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/alibaba/ailabs/tg/network/Converter<",
            "Lmtopsdk/mtop/domain/BaseOutDo;",
            "*>;"
        }
    .end annotation

    .line 23
    invoke-static {p1}, Lcom/alibaba/ailabs/tg/network/mtop/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    .line 24
    new-instance v0, Lcom/alibaba/ailabs/tg/network/mtop/MtopConverterFactory$1;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/tg/network/mtop/MtopConverterFactory$1;-><init>(Lcom/alibaba/ailabs/tg/network/mtop/MtopConverterFactory;Ljava/lang/Class;)V

    return-object v0
.end method
