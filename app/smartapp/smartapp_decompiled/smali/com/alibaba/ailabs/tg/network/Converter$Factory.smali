.class public abstract Lcom/alibaba/ailabs/tg/network/Converter$Factory;
.super Ljava/lang/Object;
.source "Converter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/tg/network/Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public responseConverter(Ljava/lang/reflect/Type;)Lcom/alibaba/ailabs/tg/network/Converter;
    .locals 0
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

    const/4 p1, 0x0

    return-object p1
.end method
