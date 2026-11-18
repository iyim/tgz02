.class public final synthetic Lcom/alibaba/ailabs/genie/contacts/repository/-$$Lambda$ItemRepository$ngRRoZT830c6ZNKzYmBUZA29ajU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/util/List;

.field private final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/repository/-$$Lambda$ItemRepository$ngRRoZT830c6ZNKzYmBUZA29ajU;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/repository/-$$Lambda$ItemRepository$ngRRoZT830c6ZNKzYmBUZA29ajU;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/repository/-$$Lambda$ItemRepository$ngRRoZT830c6ZNKzYmBUZA29ajU;->f$0:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/repository/-$$Lambda$ItemRepository$ngRRoZT830c6ZNKzYmBUZA29ajU;->f$1:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/repository/ItemRepository;->lambda$null$55(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
