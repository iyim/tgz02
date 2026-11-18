.class public final synthetic Lcom/alibaba/ailabs/genie/second/agds/-$$Lambda$AGDSClient$-dsjNTr4hnfFWhMAtJFOBQ6kWwI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/agds/AGDSParser$IResultPayloadGJsonElementParser;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/second/agds/AGDSClient;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/second/agds/AGDSClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/agds/-$$Lambda$AGDSClient$-dsjNTr4hnfFWhMAtJFOBQ6kWwI;->f$0:Lcom/alibaba/ailabs/genie/second/agds/AGDSClient;

    return-void
.end method


# virtual methods
.method public final parse(Lcom/google/gson/JsonElement;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/agds/-$$Lambda$AGDSClient$-dsjNTr4hnfFWhMAtJFOBQ6kWwI;->f$0:Lcom/alibaba/ailabs/genie/second/agds/AGDSClient;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/second/agds/AGDSClient;->lambda$actionResponse$1$AGDSClient(Lcom/google/gson/JsonElement;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
