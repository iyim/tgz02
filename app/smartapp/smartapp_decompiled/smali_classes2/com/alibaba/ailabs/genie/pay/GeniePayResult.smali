.class public Lcom/alibaba/ailabs/genie/pay/GeniePayResult;
.super Ljava/lang/Object;
.source "GeniePayResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public mGeniePayRequest:Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;

.field public mModel:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public mModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field public mTraceId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;",
            "TT;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/GeniePayResult;->mGeniePayRequest:Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;

    .line 42
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/pay/GeniePayResult;->mModel:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/GeniePayResult;->mGeniePayRequest:Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;

    .line 33
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/pay/GeniePayResult;->mModelList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/GeniePayResult;->mGeniePayRequest:Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;

    .line 47
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/pay/GeniePayResult;->mModelList:Ljava/util/List;

    .line 48
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/pay/GeniePayResult;->mTraceId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/GeniePayResult;->mModel:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/GeniePayResult;->mModel:Ljava/lang/Object;

    .line 53
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/pay/GeniePayResult;->mTraceId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/GeniePayResult;->mModelList:Ljava/util/List;

    return-void
.end method
