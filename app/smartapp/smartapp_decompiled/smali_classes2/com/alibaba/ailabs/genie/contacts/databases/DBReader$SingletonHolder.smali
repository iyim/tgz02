.class Lcom/alibaba/ailabs/genie/contacts/databases/DBReader$SingletonHolder;
.super Ljava/lang/Object;
.source "DBReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/contacts/databases/DBReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final instance:Lcom/alibaba/ailabs/genie/contacts/databases/DBReader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/databases/DBReader;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/databases/DBReader;-><init>(Lcom/alibaba/ailabs/genie/contacts/databases/DBReader$1;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/contacts/databases/DBReader$SingletonHolder;->instance:Lcom/alibaba/ailabs/genie/contacts/databases/DBReader;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100()Lcom/alibaba/ailabs/genie/contacts/databases/DBReader;
    .locals 1

    .line 27
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/databases/DBReader$SingletonHolder;->instance:Lcom/alibaba/ailabs/genie/contacts/databases/DBReader;

    return-object v0
.end method
