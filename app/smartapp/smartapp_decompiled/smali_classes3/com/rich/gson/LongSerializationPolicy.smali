.class public abstract enum Lcom/rich/gson/LongSerializationPolicy;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rich/gson/LongSerializationPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/rich/gson/LongSerializationPolicy;

.field public static final enum DEFAULT:Lcom/rich/gson/LongSerializationPolicy;

.field public static final enum STRING:Lcom/rich/gson/LongSerializationPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/rich/gson/LongSerializationPolicy$1;

    const/4 v1, 0x0

    const-string v2, "DEFAULT"

    invoke-direct {v0, v2, v1}, Lcom/rich/gson/LongSerializationPolicy$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rich/gson/LongSerializationPolicy;->DEFAULT:Lcom/rich/gson/LongSerializationPolicy;

    new-instance v0, Lcom/rich/gson/LongSerializationPolicy$2;

    const/4 v2, 0x1

    const-string v3, "STRING"

    invoke-direct {v0, v3, v2}, Lcom/rich/gson/LongSerializationPolicy$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rich/gson/LongSerializationPolicy;->STRING:Lcom/rich/gson/LongSerializationPolicy;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/rich/gson/LongSerializationPolicy;

    sget-object v3, Lcom/rich/gson/LongSerializationPolicy;->DEFAULT:Lcom/rich/gson/LongSerializationPolicy;

    aput-object v3, v0, v1

    sget-object v1, Lcom/rich/gson/LongSerializationPolicy;->STRING:Lcom/rich/gson/LongSerializationPolicy;

    aput-object v1, v0, v2

    sput-object v0, Lcom/rich/gson/LongSerializationPolicy;->$VALUES:[Lcom/rich/gson/LongSerializationPolicy;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/rich/gson/LongSerializationPolicy$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/rich/gson/LongSerializationPolicy;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rich/gson/LongSerializationPolicy;
    .locals 1

    const-class v0, Lcom/rich/gson/LongSerializationPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/rich/gson/LongSerializationPolicy;

    return-object p0
.end method

.method public static values()[Lcom/rich/gson/LongSerializationPolicy;
    .locals 1

    sget-object v0, Lcom/rich/gson/LongSerializationPolicy;->$VALUES:[Lcom/rich/gson/LongSerializationPolicy;

    invoke-virtual {v0}, [Lcom/rich/gson/LongSerializationPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/rich/gson/LongSerializationPolicy;

    return-object v0
.end method


# virtual methods
.method public abstract serialize(Ljava/lang/Long;)Lcom/rich/gson/JsonElement;
.end method
