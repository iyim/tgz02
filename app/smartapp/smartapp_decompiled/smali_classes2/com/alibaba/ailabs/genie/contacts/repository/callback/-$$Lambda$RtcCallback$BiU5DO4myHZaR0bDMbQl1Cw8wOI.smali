.class public final synthetic Lcom/alibaba/ailabs/genie/contacts/repository/callback/-$$Lambda$RtcCallback$BiU5DO4myHZaR0bDMbQl1Cw8wOI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/contacts/repository/callback/RtcCallback;

.field private final synthetic f$1:Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/contacts/repository/callback/RtcCallback;Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/repository/callback/-$$Lambda$RtcCallback$BiU5DO4myHZaR0bDMbQl1Cw8wOI;->f$0:Lcom/alibaba/ailabs/genie/contacts/repository/callback/RtcCallback;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/repository/callback/-$$Lambda$RtcCallback$BiU5DO4myHZaR0bDMbQl1Cw8wOI;->f$1:Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/repository/callback/-$$Lambda$RtcCallback$BiU5DO4myHZaR0bDMbQl1Cw8wOI;->f$0:Lcom/alibaba/ailabs/genie/contacts/repository/callback/RtcCallback;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/repository/callback/-$$Lambda$RtcCallback$BiU5DO4myHZaR0bDMbQl1Cw8wOI;->f$1:Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/repository/callback/RtcCallback;->lambda$onSuccess$95$RtcCallback(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V

    return-void
.end method
