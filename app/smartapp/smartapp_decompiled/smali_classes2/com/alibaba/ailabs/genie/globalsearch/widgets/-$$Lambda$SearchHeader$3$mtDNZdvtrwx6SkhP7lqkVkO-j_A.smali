.class public final synthetic Lcom/alibaba/ailabs/genie/globalsearch/widgets/-$$Lambda$SearchHeader$3$mtDNZdvtrwx6SkhP7lqkVkO-j_A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$3;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/-$$Lambda$SearchHeader$3$mtDNZdvtrwx6SkhP7lqkVkO-j_A;->f$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$3;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/-$$Lambda$SearchHeader$3$mtDNZdvtrwx6SkhP7lqkVkO-j_A;->f$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$3;

    check-cast p1, Lcom/alibaba/ailabs/genie/globalsearch/response/AutoSuggestResponse;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$3;->lambda$run$19$SearchHeader$3(Lcom/alibaba/ailabs/genie/globalsearch/response/AutoSuggestResponse;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
