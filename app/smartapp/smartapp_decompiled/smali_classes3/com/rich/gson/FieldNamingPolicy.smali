.class public abstract enum Lcom/rich/gson/FieldNamingPolicy;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/rich/gson/FieldNamingStrategy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rich/gson/FieldNamingPolicy;",
        ">;",
        "Lcom/rich/gson/FieldNamingStrategy;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/rich/gson/FieldNamingPolicy;

.field public static final enum IDENTITY:Lcom/rich/gson/FieldNamingPolicy;

.field public static final enum LOWER_CASE_WITH_DASHES:Lcom/rich/gson/FieldNamingPolicy;

.field public static final enum LOWER_CASE_WITH_UNDERSCORES:Lcom/rich/gson/FieldNamingPolicy;

.field public static final enum UPPER_CAMEL_CASE:Lcom/rich/gson/FieldNamingPolicy;

.field public static final enum UPPER_CAMEL_CASE_WITH_SPACES:Lcom/rich/gson/FieldNamingPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/rich/gson/FieldNamingPolicy$1;

    const/4 v1, 0x0

    const-string v2, "IDENTITY"

    invoke-direct {v0, v2, v1}, Lcom/rich/gson/FieldNamingPolicy$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rich/gson/FieldNamingPolicy;->IDENTITY:Lcom/rich/gson/FieldNamingPolicy;

    new-instance v0, Lcom/rich/gson/FieldNamingPolicy$2;

    const/4 v2, 0x1

    const-string v3, "UPPER_CAMEL_CASE"

    invoke-direct {v0, v3, v2}, Lcom/rich/gson/FieldNamingPolicy$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rich/gson/FieldNamingPolicy;->UPPER_CAMEL_CASE:Lcom/rich/gson/FieldNamingPolicy;

    new-instance v0, Lcom/rich/gson/FieldNamingPolicy$3;

    const/4 v3, 0x2

    const-string v4, "UPPER_CAMEL_CASE_WITH_SPACES"

    invoke-direct {v0, v4, v3}, Lcom/rich/gson/FieldNamingPolicy$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rich/gson/FieldNamingPolicy;->UPPER_CAMEL_CASE_WITH_SPACES:Lcom/rich/gson/FieldNamingPolicy;

    new-instance v0, Lcom/rich/gson/FieldNamingPolicy$4;

    const/4 v4, 0x3

    const-string v5, "LOWER_CASE_WITH_UNDERSCORES"

    invoke-direct {v0, v5, v4}, Lcom/rich/gson/FieldNamingPolicy$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rich/gson/FieldNamingPolicy;->LOWER_CASE_WITH_UNDERSCORES:Lcom/rich/gson/FieldNamingPolicy;

    new-instance v0, Lcom/rich/gson/FieldNamingPolicy$5;

    const/4 v5, 0x4

    const-string v6, "LOWER_CASE_WITH_DASHES"

    invoke-direct {v0, v6, v5}, Lcom/rich/gson/FieldNamingPolicy$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rich/gson/FieldNamingPolicy;->LOWER_CASE_WITH_DASHES:Lcom/rich/gson/FieldNamingPolicy;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/rich/gson/FieldNamingPolicy;

    sget-object v6, Lcom/rich/gson/FieldNamingPolicy;->IDENTITY:Lcom/rich/gson/FieldNamingPolicy;

    aput-object v6, v0, v1

    sget-object v1, Lcom/rich/gson/FieldNamingPolicy;->UPPER_CAMEL_CASE:Lcom/rich/gson/FieldNamingPolicy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/rich/gson/FieldNamingPolicy;->UPPER_CAMEL_CASE_WITH_SPACES:Lcom/rich/gson/FieldNamingPolicy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/rich/gson/FieldNamingPolicy;->LOWER_CASE_WITH_UNDERSCORES:Lcom/rich/gson/FieldNamingPolicy;

    aput-object v1, v0, v4

    sget-object v1, Lcom/rich/gson/FieldNamingPolicy;->LOWER_CASE_WITH_DASHES:Lcom/rich/gson/FieldNamingPolicy;

    aput-object v1, v0, v5

    sput-object v0, Lcom/rich/gson/FieldNamingPolicy;->$VALUES:[Lcom/rich/gson/FieldNamingPolicy;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/rich/gson/FieldNamingPolicy$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/rich/gson/FieldNamingPolicy;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static modifyString(CLjava/lang/String;I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static separateCamelCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static upperCaseFirstLetter(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    :goto_0
    add-int/lit8 v4, v3, -0x1

    if-ge v1, v4, :cond_1

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v2, p0, v1}, Lcom/rich/gson/FieldNamingPolicy;->modifyString(CLjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rich/gson/FieldNamingPolicy;
    .locals 1

    const-class v0, Lcom/rich/gson/FieldNamingPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/rich/gson/FieldNamingPolicy;

    return-object p0
.end method

.method public static values()[Lcom/rich/gson/FieldNamingPolicy;
    .locals 1

    sget-object v0, Lcom/rich/gson/FieldNamingPolicy;->$VALUES:[Lcom/rich/gson/FieldNamingPolicy;

    invoke-virtual {v0}, [Lcom/rich/gson/FieldNamingPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/rich/gson/FieldNamingPolicy;

    return-object v0
.end method
