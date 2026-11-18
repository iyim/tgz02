.class Lcom/alibaba/ailabs/genie/contacts/databases/DBWriter$SingletonHolder;
.super Ljava/lang/Object;
.source "DBWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/contacts/databases/DBWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final instance:Lcom/alibaba/ailabs/genie/contacts/databases/DBWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/databases/DBWriter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/databases/DBWriter;-><init>(Lcom/alibaba/ailabs/genie/contacts/databases/DBWriter$1;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/contacts/databases/DBWriter$SingletonHolder;->instance:Lcom/alibaba/ailabs/genie/contacts/databases/DBWriter;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100()Lcom/alibaba/ailabs/genie/contacts/databases/DBWriter;
    .locals 1

    .line 20
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/databases/DBWriter$SingletonHolder;->instance:Lcom/alibaba/ailabs/genie/contacts/databases/DBWriter;

    return-object v0
.end method
