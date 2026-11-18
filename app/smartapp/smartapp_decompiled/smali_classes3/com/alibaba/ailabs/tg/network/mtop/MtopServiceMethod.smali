.class public Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceMethod;
.super Ljava/lang/Object;
.source "MtopServiceMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceMethod$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public outClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public paramsKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public request:Ljava/lang/Object;

.field public responseType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceMethod$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceMethod$Builder<",
            "TR;TT;>;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iget-object v0, p1, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceMethod$Builder;->responseType:Ljava/lang/reflect/Type;

    iput-object v0, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceMethod;->responseType:Ljava/lang/reflect/Type;

    .line 35
    iget-object v0, p1, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceMethod$Builder;->paramsKeys:Ljava/util/List;

    iput-object v0, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceMethod;->paramsKeys:Ljava/util/List;

    .line 36
    iget-object v0, p1, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceMethod$Builder;->request:Ljava/lang/Object;

    iput-object v0, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceMethod;->request:Ljava/lang/Object;

    .line 37
    iget-object p1, p1, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceMethod$Builder;->outClass:Ljava/lang/Class;

    iput-object p1, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceMethod;->outClass:Ljava/lang/Class;

    return-void
.end method
