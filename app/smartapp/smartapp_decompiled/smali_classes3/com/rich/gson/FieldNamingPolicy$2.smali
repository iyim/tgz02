.class final enum Lcom/rich/gson/FieldNamingPolicy$2;
.super Lcom/rich/gson/FieldNamingPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rich/gson/FieldNamingPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/rich/gson/FieldNamingPolicy;-><init>(Ljava/lang/String;ILcom/rich/gson/FieldNamingPolicy$1;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/rich/gson/FieldNamingPolicy$2;->upperCaseFirstLetter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
