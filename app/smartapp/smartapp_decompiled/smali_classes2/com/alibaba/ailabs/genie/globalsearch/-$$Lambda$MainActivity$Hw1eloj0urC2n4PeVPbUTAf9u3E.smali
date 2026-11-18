.class public final synthetic Lcom/alibaba/ailabs/genie/globalsearch/-$$Lambda$MainActivity$Hw1eloj0urC2n4PeVPbUTAf9u3E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/-$$Lambda$MainActivity$Hw1eloj0urC2n4PeVPbUTAf9u3E;->f$0:Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/-$$Lambda$MainActivity$Hw1eloj0urC2n4PeVPbUTAf9u3E;->f$0:Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;

    check-cast p1, Lcom/alibaba/ailabs/genie/globalsearch/response/GlobalSearchResponse;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/globalsearch/MainActivity;->lambda$searchByString$25$MainActivity(Lcom/alibaba/ailabs/genie/globalsearch/response/GlobalSearchResponse;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
