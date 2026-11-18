.class final Lcom/rich/gson/internal/bind/TypeAdapters$26;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/rich/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rich/gson/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public create(Lcom/rich/gson/Gson;Lcom/rich/gson/reflect/TypeToken;)Lcom/rich/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/rich/gson/Gson;",
            "Lcom/rich/gson/reflect/TypeToken<",
            "TT;>;)",
            "Lcom/rich/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/rich/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object p2

    const-class v0, Ljava/sql/Timestamp;

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-class p2, Ljava/util/Date;

    invoke-virtual {p1, p2}, Lcom/rich/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/rich/gson/TypeAdapter;

    move-result-object p1

    new-instance p2, Lcom/rich/gson/internal/bind/TypeAdapters$26$1;

    invoke-direct {p2, p0, p1}, Lcom/rich/gson/internal/bind/TypeAdapters$26$1;-><init>(Lcom/rich/gson/internal/bind/TypeAdapters$26;Lcom/rich/gson/TypeAdapter;)V

    return-object p2
.end method
