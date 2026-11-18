.class public final enum Lcom/rich/gson/stream/JsonToken;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rich/gson/stream/JsonToken;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/rich/gson/stream/JsonToken;

.field public static final enum BEGIN_ARRAY:Lcom/rich/gson/stream/JsonToken;

.field public static final enum BEGIN_OBJECT:Lcom/rich/gson/stream/JsonToken;

.field public static final enum BOOLEAN:Lcom/rich/gson/stream/JsonToken;

.field public static final enum END_ARRAY:Lcom/rich/gson/stream/JsonToken;

.field public static final enum END_DOCUMENT:Lcom/rich/gson/stream/JsonToken;

.field public static final enum END_OBJECT:Lcom/rich/gson/stream/JsonToken;

.field public static final enum NAME:Lcom/rich/gson/stream/JsonToken;

.field public static final enum NULL:Lcom/rich/gson/stream/JsonToken;

.field public static final enum NUMBER:Lcom/rich/gson/stream/JsonToken;

.field public static final enum STRING:Lcom/rich/gson/stream/JsonToken;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/rich/gson/stream/JsonToken;

    const/4 v1, 0x0

    const-string v2, "BEGIN_ARRAY"

    invoke-direct {v0, v2, v1}, Lcom/rich/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rich/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/rich/gson/stream/JsonToken;

    new-instance v0, Lcom/rich/gson/stream/JsonToken;

    const/4 v2, 0x1

    const-string v3, "END_ARRAY"

    invoke-direct {v0, v3, v2}, Lcom/rich/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rich/gson/stream/JsonToken;->END_ARRAY:Lcom/rich/gson/stream/JsonToken;

    new-instance v0, Lcom/rich/gson/stream/JsonToken;

    const/4 v3, 0x2

    const-string v4, "BEGIN_OBJECT"

    invoke-direct {v0, v4, v3}, Lcom/rich/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rich/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/rich/gson/stream/JsonToken;

    new-instance v0, Lcom/rich/gson/stream/JsonToken;

    const/4 v4, 0x3

    const-string v5, "END_OBJECT"

    invoke-direct {v0, v5, v4}, Lcom/rich/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rich/gson/stream/JsonToken;->END_OBJECT:Lcom/rich/gson/stream/JsonToken;

    new-instance v0, Lcom/rich/gson/stream/JsonToken;

    const/4 v5, 0x4

    const-string v6, "NAME"

    invoke-direct {v0, v6, v5}, Lcom/rich/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rich/gson/stream/JsonToken;->NAME:Lcom/rich/gson/stream/JsonToken;

    new-instance v0, Lcom/rich/gson/stream/JsonToken;

    const/4 v6, 0x5

    const-string v7, "STRING"

    invoke-direct {v0, v7, v6}, Lcom/rich/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rich/gson/stream/JsonToken;->STRING:Lcom/rich/gson/stream/JsonToken;

    new-instance v0, Lcom/rich/gson/stream/JsonToken;

    const/4 v7, 0x6

    const-string v8, "NUMBER"

    invoke-direct {v0, v8, v7}, Lcom/rich/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rich/gson/stream/JsonToken;->NUMBER:Lcom/rich/gson/stream/JsonToken;

    new-instance v0, Lcom/rich/gson/stream/JsonToken;

    const/4 v8, 0x7

    const-string v9, "BOOLEAN"

    invoke-direct {v0, v9, v8}, Lcom/rich/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rich/gson/stream/JsonToken;->BOOLEAN:Lcom/rich/gson/stream/JsonToken;

    new-instance v0, Lcom/rich/gson/stream/JsonToken;

    const/16 v9, 0x8

    const-string v10, "NULL"

    invoke-direct {v0, v10, v9}, Lcom/rich/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rich/gson/stream/JsonToken;->NULL:Lcom/rich/gson/stream/JsonToken;

    new-instance v0, Lcom/rich/gson/stream/JsonToken;

    const/16 v10, 0x9

    const-string v11, "END_DOCUMENT"

    invoke-direct {v0, v11, v10}, Lcom/rich/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rich/gson/stream/JsonToken;->END_DOCUMENT:Lcom/rich/gson/stream/JsonToken;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/rich/gson/stream/JsonToken;

    sget-object v11, Lcom/rich/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/rich/gson/stream/JsonToken;

    aput-object v11, v0, v1

    sget-object v1, Lcom/rich/gson/stream/JsonToken;->END_ARRAY:Lcom/rich/gson/stream/JsonToken;

    aput-object v1, v0, v2

    sget-object v1, Lcom/rich/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/rich/gson/stream/JsonToken;

    aput-object v1, v0, v3

    sget-object v1, Lcom/rich/gson/stream/JsonToken;->END_OBJECT:Lcom/rich/gson/stream/JsonToken;

    aput-object v1, v0, v4

    sget-object v1, Lcom/rich/gson/stream/JsonToken;->NAME:Lcom/rich/gson/stream/JsonToken;

    aput-object v1, v0, v5

    sget-object v1, Lcom/rich/gson/stream/JsonToken;->STRING:Lcom/rich/gson/stream/JsonToken;

    aput-object v1, v0, v6

    sget-object v1, Lcom/rich/gson/stream/JsonToken;->NUMBER:Lcom/rich/gson/stream/JsonToken;

    aput-object v1, v0, v7

    sget-object v1, Lcom/rich/gson/stream/JsonToken;->BOOLEAN:Lcom/rich/gson/stream/JsonToken;

    aput-object v1, v0, v8

    sget-object v1, Lcom/rich/gson/stream/JsonToken;->NULL:Lcom/rich/gson/stream/JsonToken;

    aput-object v1, v0, v9

    sget-object v1, Lcom/rich/gson/stream/JsonToken;->END_DOCUMENT:Lcom/rich/gson/stream/JsonToken;

    aput-object v1, v0, v10

    sput-object v0, Lcom/rich/gson/stream/JsonToken;->$VALUES:[Lcom/rich/gson/stream/JsonToken;

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

.method public static valueOf(Ljava/lang/String;)Lcom/rich/gson/stream/JsonToken;
    .locals 1

    const-class v0, Lcom/rich/gson/stream/JsonToken;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/rich/gson/stream/JsonToken;

    return-object p0
.end method

.method public static values()[Lcom/rich/gson/stream/JsonToken;
    .locals 1

    sget-object v0, Lcom/rich/gson/stream/JsonToken;->$VALUES:[Lcom/rich/gson/stream/JsonToken;

    invoke-virtual {v0}, [Lcom/rich/gson/stream/JsonToken;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/rich/gson/stream/JsonToken;

    return-object v0
.end method
