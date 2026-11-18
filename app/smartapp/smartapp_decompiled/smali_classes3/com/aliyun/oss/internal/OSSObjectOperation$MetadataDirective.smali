.class final enum Lcom/aliyun/oss/internal/OSSObjectOperation$MetadataDirective;
.super Ljava/lang/Enum;
.source "OSSObjectOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/oss/internal/OSSObjectOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MetadataDirective"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aliyun/oss/internal/OSSObjectOperation$MetadataDirective;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aliyun/oss/internal/OSSObjectOperation$MetadataDirective;

.field public static final enum COPY:Lcom/aliyun/oss/internal/OSSObjectOperation$MetadataDirective;

.field public static final enum REPLACE:Lcom/aliyun/oss/internal/OSSObjectOperation$MetadataDirective;


# instance fields
.field private final directiveAsString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 775
    new-instance v0, Lcom/aliyun/oss/internal/OSSObjectOperation$MetadataDirective;

    const/4 v1, 0x0

    const-string v2, "COPY"

    invoke-direct {v0, v2, v1, v2}, Lcom/aliyun/oss/internal/OSSObjectOperation$MetadataDirective;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aliyun/oss/internal/OSSObjectOperation$MetadataDirective;->COPY:Lcom/aliyun/oss/internal/OSSObjectOperation$MetadataDirective;

    .line 778
    new-instance v0, Lcom/aliyun/oss/internal/OSSObjectOperation$MetadataDirective;

    const/4 v2, 0x1

    const-string v3, "REPLACE"

    invoke-direct {v0, v3, v2, v3}, Lcom/aliyun/oss/internal/OSSObjectOperation$MetadataDirective;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aliyun/oss/internal/OSSObjectOperation$MetadataDirective;->REPLACE:Lcom/aliyun/oss/internal/OSSObjectOperation$MetadataDirective;

    const/4 v0, 0x2

    .line 772
    new-array v0, v0, [Lcom/aliyun/oss/internal/OSSObjectOperation$MetadataDirective;

    sget-object v3, Lcom/aliyun/oss/internal/OSSObjectOperation$MetadataDirective;->COPY:Lcom/aliyun/oss/internal/OSSObjectOperation$MetadataDirective;

    aput-object v3, v0, v1

    sget-object v1, Lcom/aliyun/oss/internal/OSSObjectOperation$MetadataDirective;->REPLACE:Lcom/aliyun/oss/internal/OSSObjectOperation$MetadataDirective;

    aput-object v1, v0, v2

    sput-object v0, Lcom/aliyun/oss/internal/OSSObjectOperation$MetadataDirective;->$VALUES:[Lcom/aliyun/oss/internal/OSSObjectOperation$MetadataDirective;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 782
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 783
    iput-object p3, p0, Lcom/aliyun/oss/internal/OSSObjectOperation$MetadataDirective;->directiveAsString:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aliyun/oss/internal/OSSObjectOperation$MetadataDirective;
    .locals 1

    .line 772
    const-class v0, Lcom/aliyun/oss/internal/OSSObjectOperation$MetadataDirective;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/aliyun/oss/internal/OSSObjectOperation$MetadataDirective;

    return-object p0
.end method

.method public static values()[Lcom/aliyun/oss/internal/OSSObjectOperation$MetadataDirective;
    .locals 1

    .line 772
    sget-object v0, Lcom/aliyun/oss/internal/OSSObjectOperation$MetadataDirective;->$VALUES:[Lcom/aliyun/oss/internal/OSSObjectOperation$MetadataDirective;

    invoke-virtual {v0}, [Lcom/aliyun/oss/internal/OSSObjectOperation$MetadataDirective;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aliyun/oss/internal/OSSObjectOperation$MetadataDirective;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 788
    iget-object v0, p0, Lcom/aliyun/oss/internal/OSSObjectOperation$MetadataDirective;->directiveAsString:Ljava/lang/String;

    return-object v0
.end method
