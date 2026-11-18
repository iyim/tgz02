.class Lcom/alibaba/ailabs/tg/network/mtop/MtopCall;
.super Ljava/lang/Object;
.source "MtopCall.java"

# interfaces
.implements Lcom/alibaba/ailabs/tg/network/Call;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/alibaba/ailabs/tg/network/Call<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mArgs:[Ljava/lang/Object;

.field private final mFactory:Lcom/alibaba/ailabs/tg/network/Converter$Factory;

.field private final mMtopServiceMethod:Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceMethod<",
            "TT;*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceMethod;[Ljava/lang/Object;Lcom/alibaba/ailabs/tg/network/Converter$Factory;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopCall;->mMtopServiceMethod:Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceMethod;

    .line 29
    iput-object p2, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopCall;->mArgs:[Ljava/lang/Object;

    .line 30
    iput-object p3, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopCall;->mFactory:Lcom/alibaba/ailabs/tg/network/Converter$Factory;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/tg/network/mtop/MtopCall;)Lcom/alibaba/ailabs/tg/network/Converter$Factory;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopCall;->mFactory:Lcom/alibaba/ailabs/tg/network/Converter$Factory;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/tg/network/mtop/MtopCall;)Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceMethod;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopCall;->mMtopServiceMethod:Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceMethod;

    return-object p0
.end method


# virtual methods
.method public enqueue(Lcom/alibaba/ailabs/tg/network/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/tg/network/Callback<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 36
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/tg/network/mtop/MtopCall;->enqueue(Lcom/alibaba/ailabs/tg/network/Callback;I)V

    return-void
.end method

.method public enqueue(Lcom/alibaba/ailabs/tg/network/Callback;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/tg/network/Callback<",
            "TT;>;I)V"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopCall;->mMtopServiceMethod:Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceMethod;

    iget-object v0, v0, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceMethod;->request:Ljava/lang/Object;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const-string v0, "ApiMethod request parser failed"

    const-string v1, ""

    .line 43
    invoke-interface {p1, p2, v0, v1}, Lcom/alibaba/ailabs/tg/network/Callback;->onFailure(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 48
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopCall;->mMtopServiceMethod:Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceMethod;

    iget-object v0, v0, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceMethod;->request:Ljava/lang/Object;

    .line 49
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    .line 50
    :goto_0
    iget-object v3, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopCall;->mMtopServiceMethod:Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceMethod;

    iget-object v3, v3, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceMethod;->paramsKeys:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 51
    iget-object v3, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopCall;->mArgs:[Ljava/lang/Object;

    array-length v3, v3

    if-le v2, v3, :cond_2

    const-string v1, "args size less than @Parameter size"

    .line 52
    invoke-static {v1}, Lcom/alibaba/ailabs/tg/utils/LogUtils;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 55
    :cond_2
    iget-object v3, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopCall;->mMtopServiceMethod:Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceMethod;

    iget-object v3, v3, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceMethod;->paramsKeys:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x1

    .line 56
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 57
    iget-object v4, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopCall;->mArgs:[Ljava/lang/Object;

    aget-object v4, v4, v2

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    :cond_3
    :goto_1
    invoke-static {}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->getInstance()Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Lmtopsdk/mtop/domain/IMTOPDataObject;

    iget-object v0, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopCall;->mMtopServiceMethod:Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceMethod;

    iget-object v3, v0, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceMethod;->outClass:Ljava/lang/Class;

    new-instance v4, Lcom/alibaba/ailabs/tg/network/mtop/MtopCall$1;

    invoke-direct {v4, p0, p1, p2}, Lcom/alibaba/ailabs/tg/network/mtop/MtopCall$1;-><init>(Lcom/alibaba/ailabs/tg/network/mtop/MtopCall;Lcom/alibaba/ailabs/tg/network/Callback;I)V

    const/4 v5, 0x0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->asyncRequestApi(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 103
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception p1

    .line 101
    invoke-virtual {p1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :goto_2
    return-void
.end method
