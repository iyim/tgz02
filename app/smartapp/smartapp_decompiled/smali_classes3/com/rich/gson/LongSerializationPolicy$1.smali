.class final enum Lcom/rich/gson/LongSerializationPolicy$1;
.super Lcom/rich/gson/LongSerializationPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rich/gson/LongSerializationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/rich/gson/LongSerializationPolicy;-><init>(Ljava/lang/String;ILcom/rich/gson/LongSerializationPolicy$1;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public serialize(Ljava/lang/Long;)Lcom/rich/gson/JsonElement;
    .locals 1

    new-instance v0, Lcom/rich/gson/JsonPrimitive;

    invoke-direct {v0, p1}, Lcom/rich/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    return-object v0
.end method
