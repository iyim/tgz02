.class final Lcom/rich/gson/internal/bind/TimeTypeAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/rich/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rich/gson/internal/bind/TimeTypeAdapter;
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
    .locals 0
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

    move-result-object p1

    const-class p2, Ljava/sql/Time;

    if-ne p1, p2, :cond_0

    new-instance p1, Lcom/rich/gson/internal/bind/TimeTypeAdapter;

    invoke-direct {p1}, Lcom/rich/gson/internal/bind/TimeTypeAdapter;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
