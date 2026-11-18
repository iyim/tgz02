.class final Lcom/rich/gson/internal/bind/TypeAdapters$31;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/rich/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rich/gson/internal/bind/TypeAdapters;->newFactory(Lcom/rich/gson/reflect/TypeToken;Lcom/rich/gson/TypeAdapter;)Lcom/rich/gson/TypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$type:Lcom/rich/gson/reflect/TypeToken;

.field final synthetic val$typeAdapter:Lcom/rich/gson/TypeAdapter;


# direct methods
.method constructor <init>(Lcom/rich/gson/reflect/TypeToken;Lcom/rich/gson/TypeAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/gson/internal/bind/TypeAdapters$31;->val$type:Lcom/rich/gson/reflect/TypeToken;

    iput-object p2, p0, Lcom/rich/gson/internal/bind/TypeAdapters$31;->val$typeAdapter:Lcom/rich/gson/TypeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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

    iget-object p1, p0, Lcom/rich/gson/internal/bind/TypeAdapters$31;->val$type:Lcom/rich/gson/reflect/TypeToken;

    invoke-virtual {p2, p1}, Lcom/rich/gson/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/rich/gson/internal/bind/TypeAdapters$31;->val$typeAdapter:Lcom/rich/gson/TypeAdapter;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
